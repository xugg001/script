#!/usr/bin/expect -f
set timeout 7200
#关闭输出信息，仅输出命令执行结果
log_user 0
set username [lindex $argv 0]
set realip   [lindex $argv 1]
set password [lindex $argv 2]
set cmd      [lindex $argv 3]
spawn /usr/bin/ssh -l $username $realip $cmd
expect {
    "(yes/no)?" {
        send "yes\n"
        expect "password:"
        send "$password\n"
    }
    "password:" {
        send "$password\n"
    }
}
#恢复输出信息
log_user 1
expect eof
exit
