#!/bin/bash 
Greeting="Zdravei Den 18"
echo $Greeting

# 2.User count definition and  If-Else script
UCount=$(who|wc -l)

if [ $UCount -gt 0 ]; then

 echo "There are ${UCount} users in the system"

else

 echo "the system is empty"

fi



