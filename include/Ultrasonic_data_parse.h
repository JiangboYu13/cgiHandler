/*****************************************
* ParkingSpot Detection using ultrasonic
******************************************/

#ifndef ULTRASONIC_DATA_PARSE
#define ULTRASONIC_DATA_PARSE
#include "data_parser.h"
#include <boost/thread/mutex.hpp>
#define USS_NUM 6
#include <cstdio>
#include <fstream>
#include <string>
extern bool ultra_status[];
extern Position cur_pos;
extern boost::mutex data_mutex;
extern bool pos_updated;
extern bool uss_updated;
//void Logger(std::string logMsg);
int InitU( int port, int baut);

int UninitUltrasonic(int port);

void RxParsingData();
class DataAssembler
{
private:
  int buffered_len;
  char frame_buffer[128];
public:
  DataAssembler();
  int assemble(char* rxchar);
};
#endif // SHIPDEV_INCLUDED
