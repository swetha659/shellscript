read -p "Enter the IP address: " ipaddress
echo $ipaddress
# ip_returned = "Ping -C1 $ipaddress "
ping -c1 $ipaddress 1>/dev/null 2>/dev/null
if [ $? == 0 ]
then 
    echo "IP Reachable"
else
    echo "Ip does not reachable"
    exit 0
fi
