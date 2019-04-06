#!/bin/bash

#colors
red="#FF5C57"
orange="#FFB536"
yellow="#F3F99D"
green="#5AF78E"
lblue="#9AEDFE"
blue="#57C7FF"
brown="#FF9742"
background="#231E18"

activebkg=y$green
activefore=$background
inactivebkg=y$background
inactivefore=$yellow


workspaces()
{
bspc subscribe \
| while read line; do
	#line=${line//[of]/}
	line=${line//1/  }
	line=${line//2/  }
	line=${line//3/  }
	line=${line//4/  }
	line=${line//5/  }
	line=${line//6/    }
	line=${line//:/}
	line=${line/WMeDP /}
	line=${line% *7*}
	line=${line//[FO]/%%{z$activefore\}%%{$activebkg\}}
	line=${line//[fo]/%%{z$inactivefore\}%%{$inactivebkg\}}
	line=${line//z/F}
	line=${line//y/B}
	line=${line# }

	printf "%%{l}$line%%{B#231E18}"
done
}

vol()
{
	vols=$(pacmd list-sinks | grep volume)
	vols=${vols: -100}
	vols=${vols#*/}
	vols=${vols%%%*}
	echo "$vols"
}

timemod()
{
	date +%m//%d\ %H\\\\%M
}

connected()
{
	netw=$(iwconfig wlp5s0)
	netw=${netw#*\"}
	netw=${netw%%\"*}
	echo $netw
}

mpdtrack()
{
	track=$(mpc | head -1)
}

battery()
{	
		read -r battery < /sys/class/power_supply/BAT0/capacity
		echo "%{B$green} $battery "
}



workspaces | lemonbar -f "curie:size=20" -f "Wuncon Siji" -f "Font Awesome 5 Brands:size=17" -f "Font Awesome 5 Free Solid:size=17" -f "FontAwesome:size=17" -o -5 -g 300x40+510+8 & 

while true
do
	sleep 0.5s
	echo -e "%{T3}%{B#231E18}%{F$background} $(battery)%{B$orange}%{F$background}$(vol) %{T2}%{B$lblue}%{F$red}   $(timemod)" 
done | lemonbar -f "curie:size=12" -f  "curie:size=12:style=Bold" -f "Siji" -f "Font Awesome 5 Free Solid" -f "FontAwesome" -g 260x40+1150+8 &

sleep 1

while true
do
	echo -e "%{cB#231E18}%{F$red} $(mpc | head -1)"
	sleep 1
done | lemonbar -f "curie:size=12" -f "Font Awesome 5 Free Solid" -f "FontAwesome" -g 340x40+810+8 
