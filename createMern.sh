#!/bin/bash
arr=( "$@" )
echo ${arr[*]} "in create mern"

#check if there  is a -sp
if [[ " ${arr[@]} " =~ " -sp " ]]; then
    #check if there is also an -a
    if [[ " ${arr[@]} " =~ " -spp " ]]; then
      echo "You may not have both -sp and -spp"
    elif [[ " ${arr[@]} " =~ " -mp " ]]; then
      echo "You may not have both -sp and -mp"
    elif [[ " ${arr[@]} " =~ " -mpp " ]]; then
      echo "You may not have both -sp and -mpp"
    else
      echo "Creating Mern single page app"
      . ./createSinglePage.sh $@
    fi
elif [[ " ${arr[@]} " =~ " -spp " ]]; then
  if [[ " ${arr[@]} " =~ " -mp " ]]; then
    echo "You may not have both -spp and -mp"
  elif [[ " ${arr[@]} " =~ " -mpp " ]]; then
    echo "You may not have both -spp and -mpp"
  else
    echo "creating single page profile app"
    #create single paged paged profile app
  fi
elif [[ " ${arr[@]} " =~ " -mp " ]]; then
  if [[ " ${arr[@]} " =~ " -mpp " ]]; then
    echo "You may not have both -mp and -mpp"
  else
    echo "creating multipaged app"
    #create multipaged app
  fi
elif [[ " ${arr[@]} " =~ " -mpp " ]]; then
  echo "creating multipaged profile app"
  #create a multipaged profile app
fi
