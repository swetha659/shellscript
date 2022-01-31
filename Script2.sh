##Create file for user
# Validate whether the file exists or not
#If exist , end the script with the notification that the file already exist.
# If not exist, then create a file
# Validate whether the file created or not

read -p "Enter the file name:" filename
echo $filename
test -f $filename 
# [ -f $filename ]
if [ $? != 0 ]
then 
    echo "file doesn't exist, can be created"
    touch $filename
    test -f $filename
    if [ $? == 0 ]
    then
        echo "file created successfully"
    else
        echo "File not created"
    fi
else
    echo "file exists ending the script"
    exit 0
fi
