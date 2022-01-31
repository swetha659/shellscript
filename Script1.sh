## Create a user and verify whether it got created successfully or not
=============================================================================
#1. validate whether user already exist or not
#2. If user exist end the script
#3. If user doesnt exist then created
#4. Create the user
#5. Validate user created successfully or not
# 6. Git edit
#!bin/bash
read -p "Enter the user name:" v_user
echo $v_user
id $v_user 1>/dev/null 2>dev/null
if[ $? == 0 ]
then 
    echo "User already exist, ending script"
    exit 0
else
    echo "User not exist, can be created"
    useradd $v_user 1>/dev/null 2>/dev/null
    echo "user created successfully"
fi
