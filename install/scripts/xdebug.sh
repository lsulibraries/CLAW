sudo apt-get install php5-xdebug

echo 'xdebug.remote_enable=1
xdebug.remote_handler=dbgp 
xdebug.remote_mode=req
xdebug.remote_host=192.168.2.1 
xdebug.remote_port=9000
xdebug.max_nesting_level=300' >> /etc/php5/apache2/conf.d/20-xdebug.ini

sudo service apache2 restart