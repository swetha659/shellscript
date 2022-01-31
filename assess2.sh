# Verify the connectivity of the ip address in assessment.txt using shell script and print a message "ip is reachable" or ip is not reachable
#!/bin/bash
v_list=`cat assessment.txt | awk -F ":" '{print $1}'`
# echo $v_list
for i in $v_list
do
    echo $i
    ping -c1 $i 1>/dev/null 2>/dev/null
    if [ $? == 0 ]
        then 
        echo "IP Reachable"
        exit 0
    else
        echo "Ip not reachable"
    fi
done

