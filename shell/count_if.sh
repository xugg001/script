#!/bin/bash
#统计是否有该记录，第一列与之后任意一列匹配到数据即表示有，标识为1
#接受两个参数，第二个参数为数组字符串，第一个为查询的文件，如：./count_if.sh filename "key1 key2 key3"，key1作为主要区别条件

[[ ! -f $1 ]] && { echo "统计文件不存在！";exit 1; }
file=$1
#打印表头
heads=$2
for head in heads;do
    echo -e "${head},\c"
done

#key1去重
key1s=`cat $file | awk "{print $1}"|sort -u`
for key11 in key1s;do
    for head in ${heads[*]};do

    done
done
