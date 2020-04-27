while true
do
if [ x$1 == x"-h" ];then
	echo "********************************************** \"
"输入1，返回本机IP、子网掩码、广播地址、IPV6地址 \"
	echo "输入2，检查某个IP地址与本机是否互通 \"
"输入3，查询自己的uid和gid \"
	echo "输入q，正常退出 \"do
 "********************************************** \"
fi
read cmd
case $cmd in
    		1)	ifconfig |sed -ne 2,3p ;;
          	2)	echo '请输入一个ip地址:'
                     	read ip
                        ping $ip;;
		3)	id | awk '{print $1,$2}';;
		q)	break;;
	esac
done	








