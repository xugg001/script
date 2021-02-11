#!/bin/bash
#打印有颜色的文字
#echo -e 颜色编码
#echo -e "\33[0m 正常字"
#echo -e "\033[30m 黑色字 \033[0m"
#echo -e "\033[31m 红色字 \033[0m"
#echo -e "\033[32m 绿色字 \033[0m"
#echo -e "\033[33m 黄色字 \033[0m"
#echo -e "\033[34m 蓝色字 \033[0m"
#echo -e "\033[35m 紫色字 \033[0m"
#echo -e "\033[36m 天蓝字 \033[0m"
#echo -e "\033[37m 白色字 \033[0m"
#echo -e "\033[40;37m 黑底白字 \033[0m"
#echo -e "\033[41;37m 红底白字 \033[0m"
#echo -e "\033[42;37m 绿底白字 \033[0m"
#echo -e "\033[43;37m 黄底白字 \033[0m"
#echo -e "\033[44;37m 蓝底白字 \033[0m"
#echo -e "\033[45;37m 紫底白字 \033[0m"
#echo -e "\033[46;37m 天蓝底白字 \033[0m"
#echo -e "\033[47;30m 白底黑字 \033[0m"

default="\033[0m"
black="\033[30m"
red="\033[31m"
green="\033[32m"
yellow="\033[33m"
blue="\033[34m"
purple="\033[35m"
skyblue="\033[36m"
white="\033[37m"

echo_black(){
    echo -e "${black} $1 ${default}"
}

echo_red(){
    echo -e "${red} $1 ${default}"
}

echo_green(){
    echo -e "${green} $1 ${default}"
}

echo_yellow(){
    echo -e "${yellow} $1 ${default}"
}

echo_blue(){
    echo -e "${blue} $1 ${default}"
}

echo_purple(){
    echo -e "${purple} $1 ${default}"
}
echo_skyblue(){
    echo -e "${skyblue} $1 ${default}"
}
echo_white(){
    echo -e "${white} $1 ${default}"
}
