#!/bin/bash

DIR=$1
N=$2
count=0

flip() {
    for file in $(ls -1 $DIR | egrep '(.png)$' | egrep -v '(flop)');
    do
        if [ "$count" -ge "$N" ]; then
            break
        fi
        file_name=${file%.*}
        file_ext=${file#*.}
        new_filename=$file_name"-flop."$file_ext
        new_file=$DIR/$new_filename
        if [ ! -f $new_file ]; then
            echo "Flopping: $file"
            convert $DIR/$file -flop $new_file
            ((count=count+1))
            ((augmented=1))
        fi
    done
}

crop() {
    PCT=$1
    for file in $(ls -1 $DIR | egrep '(.png)$' | egrep -v '(crop)');
    do
        if [ "$count" -ge "$N" ]; then
            break
        fi
        file_name=${file%.*}
        file_ext=${file#*.}
        new_filename=$file_name"-"$PCT"crop."$file_ext
        new_file=$DIR/$new_filename
        if [ ! -f $new_file ]; then
            echo "Cropping: $file"
            convert $DIR/$file -gravity Center -crop $PCT%\! $new_file 
            ((count=count+1))
            ((augmented=1))
        fi
    done

}

shear() {
    for file in $(ls -1 $DIR | egrep '(.png)$' | egrep -v '(shear)');
    do
        if [ "$count" -ge "$N" ]; then
            break
        fi
        file_name=${file%.*}
        file_ext=${file#*.}
        new_filename=$file_name"-shear."$file_ext
        new_file=$DIR/$new_filename
        if [ ! -f $new_file ]; then
            echo "Shearing: $file"
            convert $DIR/$file -shear $1 -shear $2 $new_file
            ((count=count+1))
            ((augmented=1))
        fi
    done
}

while [ "$count" -le "$N" ];
do
    ((augmented=0))
    # do horizontal flip ("flop")
    flip
    # crop 85% from center (95%..75%)
    crop 85 
    # shear 
    shear "-4x0" "0x6"
    if [ $augmented -eq 0 ]; then
        break
    fi
done
