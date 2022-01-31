#!bin/bash
v_id=`cat User.txt`
for i in $v_id
do
    echo $i
    sudo id $i 1>/dev/null 2>/dev/null
    if [ $? == 0 ]
    then
        echo "User Exists in the file, so ending the script"
        sudo userdel $i
        if [ $? == 0 ]
        then 
            echo "User deleted successfully"
        else
            echo "User not deleted, so recheck"
        fi
    else
        echo "User doesn't exit, cannot be deleted"
        exit 0
    fi
done