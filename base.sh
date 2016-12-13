#!/bin/bash
arr=( "$@" )
echo ${arr[*]}

#check if there  is a -c
if [[ " ${arr[@]} " =~ " -c " ]]; then
    #check if there is also an -a
    if [[ " ${arr[@]} " =~ " -a " ]]; then
      echo "You may not have both -a and -c"
    else
      echo "Creating Mern App"
      . ./createMern.sh $@
    fi
#check for an "-a" alone
elif [[ " ${arr[@]} " =~ " -a " ]]; then
  echo "there is an a"
fi
