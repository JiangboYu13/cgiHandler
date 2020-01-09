#ifndef DATA_PARSER_H
#define DATA_PARSER_H
#include <cstdint>
#include <unistd.h>
#define LATLNG_Type double
enum Msg_Type
{
	POS,
	USS,
	OBJ,
	TRJ
};
struct Position_struct
{
  LATLNG_Type lat;
  LATLNG_Type lon;
};
typedef struct Position_struct Position;
struct Object_struc
{
  uint8_t id;
  uint8_t oj_class;
  Position pos;
};
typedef struct Object_struc Object;

char* ussParser(char* data, bool* des, size_t uss_num);
char* posParser(char* data, Position* pos);
#endif