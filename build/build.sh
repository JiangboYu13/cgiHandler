sudo pkill -SIGKILL cgiH* 
make clean && make && sudo rm /usr/local/bin/cgi_bin/cgiHandler.fcgi  && sudo cp ../bin/cgiHandler.fcgi /usr/local/bin/cgi_bin/