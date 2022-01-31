#Iterate the loop until a less than 10
while [ $a -lt 10 ]
do 
    # Print the values
    echo $a
      
    # increment the value
    a=`expr $a + 1`
done

a=0
# -gt is greater than operator
  
#Iterate the loop until a is greater than 10
until [ $a -gt 10 ]
do 
    # Print the values
    echo $a
      
    # increment the value
    a=`expr $a + 1`
done
