if id 'nginx_exporter' &>/dev/null; then
    echo '[+] User found'
else
    echo '[-] Creating user'
    useradd -rs /bin/false nginx_exporter
fi
cp ./nginx_exporter.service /etc/systemd/system/
systemctl daemon-reload
sleep 1
systemctl enable nginx_exporter
sleep 1
systemctl restart nginx_exporter
sleep 1
systemctl status nginx_exporter
