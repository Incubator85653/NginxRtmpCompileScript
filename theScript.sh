sudo apt install build-essential
sudo apt install unzip

// the HTTP rewrite module requires the PCRE library
sudo apt install libpcre3 libpcre3-dev libssl-dev zlib1g-dev

wget https://github.com/arut/nginx-rtmp-module/archive/master.zip
unzip master.zip

cd nginxSource
./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master

make

// sudo make install