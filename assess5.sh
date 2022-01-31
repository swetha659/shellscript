# Write a command to get cpu , memory and disk information.
#!/bin/bash
#cat /proc/cpuinfo 
echo "CPU Information:" 
lscpu
# cat /proc/meminfo
echo
echo "Free Memory:"
free -m # free memory
# hdparm -i /dev/sda
echo
echo "Disk Information:"
df -kh #disk info