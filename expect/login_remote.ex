#!/usr/bin/expect
#用于登陆远程主机
#设置超时
set timeout 60
set user [lindex $argv 0]
set host [lindex $argv 1]
set pwd [lindex $argv 2]
spawn ssh ${user}@${host}
expect {
    send_user "$pwd"
    "*yes/no*" {send "yes\r"; exp_continue}
    "*assword*" {send "${pwd}\r"}
}
interact
