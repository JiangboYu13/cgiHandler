#include "data_parser.h"

char* ussParser(char* data, bool* des, size_t uss_num)
{
	for (size_t i = 0; i < uss_num; i++) 
	{
		*(des+i) = *((bool*)data);
		data += sizeof(bool);
	}
	return data;
}
char* posParser(char* data, Position* pos) 
{
	pos->lat = *(LATLNG_Type*)data;
	data += sizeof(LATLNG_Type);
	pos->lon = *(LATLNG_Type*)data;
	return data + sizeof(LATLNG_Type);
}
