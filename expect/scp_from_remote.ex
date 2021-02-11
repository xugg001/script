#!/usr/bin/expect
#用于登陆远程主机
#设置超时
set timeout 60
set user [lindex $argv 0]
set host [lindex $argv 1]
set pwd [lindex $argv 2]
set remote_file [lindex $argv 3]
set local_dir [lindex $argv 4]
spawn scp  ${user}@${host}:${remote_file} $local_dir
expect {
    "*yes/no*" {send "yes\r"; exp_continue}
    "*assword*" {send "${pwd}\r"}
}
expect eof
exit
