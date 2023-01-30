#!/bin/bash
cd $2
backups=$(ls -l | grep ^d | wc -l)
cd ..
if  (( "${backups}"==0 ))
then
    ls -lR $1 > directory-info.last
    currentdir=$(date +"%d-%m-%y-%T")
    mkdir $2/"${currentdir}"
    cp -r $1/* $2/"${currentdir}"
fi
ls -lR $1 > directory-info.new
if diff -r directory-info.last directory-info.new  
then      
   echo "they are the same"  
else
   echo "they are not the same"
   cd $2
   numberofbackups=$(ls -l | grep ^d | wc -l)
   if [ "${numberofbackups}" -ge $3 ]
   then
       rm -r $(ls -t1 | tail -n 1)
   fi
   cd ..
   currentdir=$(date +"%d-%m-%y-%T")
   mkdir $2/"${currentdir}"
   cp -r $1/* $2/"${currentdir}"
   ls -lR $1 > directory-info.last        
fi
