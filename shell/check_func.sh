#!/bin/bash
#检查文件是否存在
function check_file_exist(){
    if [[ ! -f $1 ]]; then
        echo_yellow "$1 文件不存在"
        exit 1;
    else
        exit 0;
    fi
}

function check_dir_exist(){
    if [[ ! -d $1 ]]; then
        echo_yellow "$1 文件夹不存在"
        exit 1;
    else
        exit 0;
    fi
}
