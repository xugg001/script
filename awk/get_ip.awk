#!/usr/bin/awk -f
BEGIN{
    FS=".";
}
{
    #切分后列数等于4直接退出
     if(NF != 4){
        exit 1;
     }else if($1 < 1 || $1 > 255 || $2 < 0 || $2 > 255 || $3 < 0 || $3 > 255 || $4 < 0 || $4 > 255 ){
        exit 1;
     }else{
        print;
     }
}
