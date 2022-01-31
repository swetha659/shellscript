# Listing all services available in the assessment.txt file
#!/bin/bash
v_list=`cat assessment.txt | awk -F ":" '{print $4}'`
# echo $v_list
for i in $v_list
do
    echo $i
done

