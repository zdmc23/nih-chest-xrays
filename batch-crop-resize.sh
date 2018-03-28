#!/bin/bash
IFS=$(echo -en "\n\b")
DIRS_PATH=$1
#for dir in $(ls -1 $DIRS_PATH);
#do
    echo $DIRS_PATH/$dir
    IMGS_PATH=$DIRS_PATH/$dir
    # argument list too long?
    for img_path in $(ls -1 $IMGS_PATH/*.*);
    #for img_path in $(find $IMGS_PATH/*.* -maxdepth 1 -name);
    do
      processed_dir=$IMGS_PATH/processed
      if [ ! -d "$processed_dir" ]; then
        echo "'processed' directory doesn't exist. create it."
        mkdir $processed_dir
      fi
      echo "Preprocessing: "$img_path
      file=$(basename $img_path)
      file_name=${file%.*}
      file_ext=${file#*.}
      new_filename="$file_name-p.$file_ext"
      #echo $processed_dir/$new_filename
      convert $img_path -gravity Center -crop 75%\! -resize 224x224 $processed_dir/$new_filename
    done
#done
