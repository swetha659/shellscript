#!/usr/bin/bash
v_id=`cat User.txt`
for i in $v_id
do
    echo $i
    id $i 1>/dev/null 2>/dev/null
    if [ $? == 0 ]
    then
        echo "User Exists in the file, so ending the script"
        exit 0
    else
        echo "User doesn't exit, so creating the user"
        useradd $i
        if [ $? == 0 ]
        then 
            echo "User added successfully"
        else
            echo "User not added, so recheck"
        fi
    fi
done