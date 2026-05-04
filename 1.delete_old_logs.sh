#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -d $SOURCE_DIR ]
then
    echo -e "$SOURCE_DIR $G Exists $N"
else
    echo -e "$SOURCE_DIR $R does not exist $N"
    exit 1
fi


echo -e "$G Deleting files older thn 14 days $N"

#find and delete the files

find "${SOURCE_DIR}" -type f -name "*.log" -mtime +14 rm -rf {} \;




# FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)
# echo "Files: $FILES"

# # dont use line, it is reserverd word
# while IFS= read -r file #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
# do
#     echo "Deleting file: $file"
#     rm -rf $file
# done <<< $FILES
