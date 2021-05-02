Needs this on ubuntu otherwise systemd-resolved will be running on port 53 which conflicts.  
Can check with a `sudo netstat -tulpen | grep 53` if necessary install `net-tools` then.  
```
sudo sed -r -i.orig 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf
sudo sh -c 'rm /etc/resolv.conf && ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf'
sudo systemctl restart systemd-resolved
```
