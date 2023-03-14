#!/bin/sh

get_file(){
    echo Downloading `basename $1`...
    wget $1 -c --directory-prefix=$2 -nc -q --show-progress
}

create_r_folders(){
    r_folders=`curl -L https://raw.githubusercontent.com/andrew-llcoder/AurumOS/main/r_folders`
    for dir in $r_folders
    do
        mkdir -p $r_folders
    done
}

unpack_tar(){
    echo Unpacking $1...
    tar -xf $1
}
