read -p "Enter directory name: " dirname
echo $dirname
# test -d $dirname
[ -d $dirname ] 
if [ $? != 0 ]
then
    echo "Directory doesn't exist, can be created"
    mkdir $dirname
    test -d $dirname
        if [ $? == 0 ]
        then
            echo "directory created"
        else
            echo "Directory not created"
        fi
else
    echo "Directory already exist, ending the script"
    exit 0
fi