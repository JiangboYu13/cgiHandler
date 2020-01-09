/*****************************************
* ParkingSpot Detection using ultrasonic
******************************************/
#include "Ultrasonic_data_parse.h"
#include "serial_func_def.h"
#include <cstring>
#include <csignal>

#include <iostream>
#include <boost/thread/thread.hpp>
#include <string>
#define BUF_SIZE 256          // 打开串口对应的套接字套接字
static int SER_PORT = 0;         // 串口序号0,1,2...
static bool KEY_INT = false;
bool ultra_status[USS_NUM];
Position cur_pos;
boost::mutex data_mutex;
bool pos_updated = false;
bool uss_updated = false;
void dataCpy(void* des_buf, void* src_buf, uint32_t size, bool switch_endian)
{
  if (switch_endian)
  {
    uint8_t* des_bg = (uint8_t*)des_buf;
    uint8_t* src_bg = (uint8_t*)src_buf;
    uint8_t tm;
    for (uint32_t i = 0; i < size; i++)
    {
      *(des_bg + i) = *(src_bg + size - 1 - i);
      tm = *(des_bg + i);
    }
  }
  else
    memcpy(des_buf, src_buf, size);
}
void KeyInterrupt(int para)
{
  KEY_INT=true;
}
int InitU(int port, int baut)
{   
    int databits = 8;   // 数据位
    int stopbits = 1;   // 停止位
    int parity = 0;     // 校验, 0: none, 1: odd, 2: even, 3: space, 4: mark
    int Ultrasonic_fd = SerialOpen(port);

    if (Ultrasonic_fd < 0)
    {
      return -1;
    }
    //printf("error\n");
    if (SerialSetSpeed(port, baut) != SERIAL_OK)
    {
      return -2;
    }

    if (SerialSetParam(port, parity, databits, stopbits) != SERIAL_OK)
    {
      return -3;
    }

    return 0;
}



int UninitUltrasonic(int port)
{
  SerialClose(port);
  std::cout<<"Port Closed Success"<<std::endl;
  return 0;
}



/*********************************************************
*获取luopan数据
*返回值：-1,读取串口出错；-2，解析数据出错；0，1，正确；
*********************************************************/

DataAssembler::DataAssembler()
{
  buffered_len = 0;
  memset(frame_buffer, 0, 128);
}

int DataAssembler::assemble(char* rxchar)
{
  int rcv_len = 0;
  uint16_t total_len;
  if (buffered_len!=0)
  {
    rcv_len = buffered_len;
    memcpy(rxchar, frame_buffer, buffered_len);
    buffered_len = 0;
  }
  while(true)
  {
    int frame_len = SerialNonBlockRead(0,(unsigned char*)frame_buffer,128);
    if (frame_len==-1) 
    {
      boost::this_thread::sleep(boost::posix_time::milliseconds(20));
      continue;
    }

    memcpy(rxchar+rcv_len, frame_buffer, frame_len);
    rcv_len += frame_len;
    dataCpy(&total_len, rxchar+1, sizeof(total_len), true);
    total_len+=4;
    if (rxchar[0]==0x7e && total_len==rcv_len)
      break;
    else if (rxchar[0]==0x7e && rcv_len>total_len)
    {
      
      if (rxchar[total_len]==0x7e)
      {
        buffered_len = rcv_len - total_len;
        memcpy(frame_buffer, rxchar+total_len, buffered_len);
      }
      rcv_len = total_len;
      break;
    }
    else if (rxchar[0]!=0x7e)
    {
      rcv_len = 0;
    }
  }
  return rcv_len;

}

void RxParsingData()
{
  signal(SIGINT, KeyInterrupt);
  while(!KEY_INT)
  {
    int error_code = InitU(SER_PORT,9600);
    if (error_code==0)      
      {
        std::cout<<"Inite Zigbee Success"<<std::endl;
        break;
      }
    else
    {
      std::cout<<"Fail access to zigbee. Error code "<<error_code<<std::endl;
      boost::this_thread::sleep(boost::posix_time::milliseconds(1000));
    }
  }
  
  DataAssembler assembler;
  char rxchar[BUF_SIZE];
  Msg_Type type;
  char* data_ptr;
  while(!KEY_INT)
  {
    int rcv_len = assembler.assemble(rxchar);
    if (rcv_len > 0)
    {
      std::cout<<"rcv length: "<<rcv_len<<std::endl;
      for (int i = 0; i < rcv_len; i++)
        printf("0x%02x ", rxchar[i]);
      std::cout<<std::endl;
      data_ptr = rxchar+15;
      while(data_ptr - rxchar<rcv_len-1)
      {

        type = static_cast<Msg_Type>(*((uint8_t*)data_ptr));
        data_ptr+= 1;
        {
          boost::mutex::scoped_lock lock(data_mutex);
          switch (type) 
          {
            case POS:
            data_ptr = posParser(data_ptr, &cur_pos);
            pos_updated = true;
            break;
            case USS:
            data_ptr = ussParser(data_ptr,ultra_status, USS_NUM);
            uss_updated = true;
            break;
            default:
            break;
          }
        }

      }
    }


  }
  UninitUltrasonic(SER_PORT);
  exit(0);
}



