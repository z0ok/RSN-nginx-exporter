# RSN-nginx-exporter

https://github.com/nginxinc/nginx-prometheus-exporter

https://github.com/nginxinc/nginx-prometheus-exporter/releases/download/v0.11.0/nginx-prometheus-exporter_0.11.0_linux_amd64.tar.gz

```
location /nginx_status {
 	stub_status;
 	allow 127.0.0.1;
  #allow 172.0.0.0/8; #for docker nginx
 	deny all;	
 }
```
