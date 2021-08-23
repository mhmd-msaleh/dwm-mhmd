#! /bin/bash 

dte(){
	dte="$(date +"%A, %B %d - %H:%M")"
	echo -e "$dte"
}

#upd(){
#	upd=`checkupdates | wc -l`
#	echo -e "$upd updates"
#}

mem(){
	mem=`free -m | grep Mem | awk '{print \$2}'`
	echo -e "$mem" 
}

#cpu(){
#	read cpu a b c previdle rest < /proc/stat
#	prevtotal=$((a+b+c+previdle))
#	sleep 0.5
#	read cpu a b c idle rest < /proc/stat
#	total=$((a+b+c+idle))
#	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
#	echo -e "$cpu"
#}

kb(){
	kb=`setxkbmap -query | grep layout | awk '{print \$2}'`
	echo -e "$kb" 
}
while true; do 
	xsetroot -name "Oh MY Good Yohonson  | $(kb) | $(mem) | $(dte)"
	sleep 10s 
done &
