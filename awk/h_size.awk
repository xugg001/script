#!/usr/bin/awk -f
#第一列为未使用-h参数的size，单位为b的情况下换算使用下面的结果，如果是kb表示的则需要进修改部分内容。
{
    h_size[1024**1]="K";
    h_size[1024**2]="M";
    h_size[1024**3]="G";
    h_size[1024**4]="T";
    size=$1;
    #寻找合适的大小单位，最终结果保留一位小数，由于最后打印结果用printf替换小数那就没法带单位，于是采用截取字符串的方式来操作。
    for( x=1024**4;x>=1024;x/=1024){
        #print $1
        if(size>=x){
            res=size/x;
            #替换大小后重新打印整行
            $1=substr(res,1,index(res,".")+1)""h_size[x];
            print
            break;
        }
    }
}
