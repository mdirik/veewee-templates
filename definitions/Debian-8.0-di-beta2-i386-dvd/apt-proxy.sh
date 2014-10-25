# Use local apt proxy:
echo 'Acquire::http::Proxy "http://10.0.2.2:3142/";' > /etc/apt/apt.conf.d/000apt-cacher-ng-proxy
