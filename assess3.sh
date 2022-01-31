# Create a file test_devops.txt and give it readonly permission.
#!/bin/bash
read -p "Enter the file name to be created:" v_user
echo $v_user
sudo touch $v_user
# chmod 444 $v_user
sudo chmod 400 $v_user
# chmod +r $v_user
permissions=`ls -dl $v_user`
echo $permissions
