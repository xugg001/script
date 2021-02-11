function log_err() {
    if [ "$1" == "" ];then
        echo $1
    else
        echo_red "[ "`date '+%Y-%m-%d %H:%M:%S'`" ]"" -- ($$) --- [Error] " $1
    fi
}

function log_info(){
        if [ "$1" == "" ];then
                echo $1
        else
                echo "[ "`date '+%Y-%m-%d %H:%M:%S'`" ]"" -- ($$) --- [Info] " $1
        fi
}
