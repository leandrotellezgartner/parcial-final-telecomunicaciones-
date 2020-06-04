sudo service NetworkManager stop
sudo chkconfig NetworkManager off
sudo service firewalld start
sudo firewall-cmd --set-default-zone=dmz
sudo firewall-cmd --zone=dmz --add-interface=eth1 
sudo firewall-cmd --zone=internal --add-interface=eth2
sudo firewall-cmd --zone=dmz --add-masquerade --permanent
sudo firewall-cmd --zone=internal --add-masquerade --permanent
sudo firewall-cmd --zone=dmz --add-port=80/tcp --permanent
sudo firewall-cmd --zone="dmz" --add-forward-port=port=80:proto=tcp:toport=8080:toaddr=192.168.50.3 --permanent
sudo firewall-cmd  --reload 



