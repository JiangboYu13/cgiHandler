//! See https://isatec.ca/fastcgipp/echo.html
//! [Request definition]
#define BOOST_BIND_NO_PLACEHOLDERS
#include <fastcgi++/request.hpp> 
#include <json.hpp>
#include <string>
#include <algorithm>
#include <boost/thread/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <iostream>
#include <cstdlib>
#include <time.h>
#include <map>
#include "Ultrasonic_data_parse.h"
using json = nlohmann::json;

std::wstring stringToWstring(const std::string& str)
{
    std::wstring temp(str.length(), L' ');
    std::copy(str.begin(), str.end(), temp.begin());
    return temp;
}
std::wstring getResponse()
{
    json res_text;
    {
        boost::mutex::scoped_lock lock(data_mutex);
        if (uss_updated)
        {
            for (size_t i = 0; i < 6; i++)
                res_text["uss"][i] = ultra_status[i];
            uss_updated = false;
        }
    	if(pos_updated)
    	{
    	    res_text["pos"]["lon"] = cur_pos.lon;
    	    res_text["pos"]["lat"] = cur_pos.lat;
    	    pos_updated = false;
    	}
    }
    
    std::cout<<res_text.dump()<<std::endl;
    std::wstring json_str = stringToWstring(res_text.dump());
    return json_str;

}



class Echo: public Fastcgipp::Request<wchar_t>
{
public:
    Echo():
        Fastcgipp::Request<wchar_t>(5*1024)
    {}

private:
    bool response()
    {
        using Fastcgipp::Encoding;
        out << Encoding::NONE<<L"Content-Type: text/plain; charset=utf-8\r\n\r\n";
        out << getResponse();
           
	   
	    /*
	    L"<h2>GET Data</h2>";
	    if(!environment().gets.empty())
	        for(const auto& get: environment().gets)
	            out << L"<b>" << Encoding::HTML << get.first << Encoding::NONE
	                << L":</b> " << Encoding::HTML << get.second
	                << Encoding::NONE << L"<br />";
	    else
		out <<L"<p>No GET data</p>";
	    */
        
        return true;
    }
};


#include <fastcgi++/manager.hpp>

int main()
{
    boost::thread thrd(&RxParsingData);
    Fastcgipp::Manager<Echo> manager;
    manager.setupSignals();
    manager.listen();
    manager.start();
    manager.join();
    thrd.join();
    return 0;
}
//! [Finish]
