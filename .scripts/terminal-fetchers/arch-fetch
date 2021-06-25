#!/usr/bin/env bash
# vim: noai:ts=4:sw=4:expandtab
# shellcheck source=/dev/null
# shellcheck disable=2009

###################################################################################
# This script uses lsb_release, lscpu, and glxinfo. make sure they are installed. #
###################################################################################
#
# START OF SCRIPT
#
#
clear ; clear

# Universal variables
user="${USER}\e[33m@"
#Desktop="${XDG_CURRENT_DESKTOP}"
Kernel="$(uname -sr)"
Uptime="$(uptime -p | sed 's/up //')"
Shell="$(basename "$SHELL")"
CPU="$(lscpu | grep Model\ name | sed 's/name:\ //' | sed "s/([^)]*)/()/g" | sed 's/[)(]//g')"
GPU="$(glxinfo -B | grep Device: | sed "s/([^)]*)/()/g" | sed 's/[)(]//g')"
RAM="$(free -h | awk '/^Mem:/ {print $3 " / " $2}')"
OS1="$(lsb_release -si)"
OS="$(lsb_release -sirc)"
Packages="$(pacman -Qs | wc -l)"


if [ -z "${WM}" ]; then
	if [ "${XDG_CURRENT_DESKTOP}" ]; then
		envtype='Desktop'
		WM="${XDG_CURRENT_DESKTOP}"
	elif [ "${DESKTOP_SESSION}" ]; then
		envtype='Desktop'
		WM="${DESKTOP_SESSION}"
	else
		envtype='WM'
		WM="$(tail -n 1 "${HOME}/.xinitrc" | cut -d ' ' -f 2)"
	fi
else
	envtype='WM'

fi

# colors
 c1="\e[31m" # Red
 c2="\e[32m" # Light Green
 c3="\e[33m" # Yellow
 c4="\e[34m"  # Calm Blue
 c5="\e[35m" # Violet
 c6="\e[36m" # Arch Blue
 c7="\e[37m" # White
 c8="\e[38m" # Sky Blue
 c9="\e[39m" # Light Grey
 c10="\e[30m" # Dark Grey
 c20="\e[0m" # Normal


# An Error echo wrapper
err0r()
{

    echo >&2 "$(tput bold; tput setaf 1)[-] ERROR: ${*}$(tput sgr0)"
    echo ""
    exit 86
}

# A Warning echo wrapper
warn()
{
 echo >&2 "$(tput bold; tput setaf 3)[!] WARNING: ${*}$(tput sgr0)"
 echo ""
}

# A Message echo wrapper
msg()
{
 echo "$(tput bold; tput setaf 2)[+] ${*}$(tput sgr0)"
}


echo ""
echo -e "${c6}                    _                     "
echo -e "${c6}                  .o+\`                   "          ${user}${c7}$(hostname)  
echo -e "${c6}                 \`ooo/                   "          OS: ${c7}$OS 
echo -e "${c6}                \`+oooo:                  "          $envtype: ${c7}$WM   
echo -e "${c6}               \`+oooooo:                 "          Kernel: ${c7}$Kernel
echo -e "${c6}               \`+oooooo:                 "          Packages: ${c7}$Packages
echo -e "${c6}               -+oooooo+:                "         Shell: ${c7}$Shell 
echo -e "${c6}             \`/:-:++oooo+:               "          CPU: ${c7}$CPU
echo -e "${c6}            \`/++++/+++++++:              "          GPU: ${c7}$GPU
echo -e "${c6}           \`/++++++++++++++:             "          RAM: ${c2}$RAM
echo -e "${c6}          \`/+++ooooooooooooo/\`          "         
echo -e "${c6}         ./ooosssso++osssssso+\`          "         
echo -e "${c6}        .oossssso-\`\`\`\`/ossssss+\`     "     
echo -e "${c6}       -osssssso.      :ssssssso.         "          
echo -e "${c6}      :osssssss/        osssso+++.        "          
echo -e "${c6}     /ossssssss/        +ssssooo/-        "
echo -e "${c6}   \`/ossssso+/:-        -:/+osssso+-     "
echo -e "${c6}  \`+sso+:-\`                 \`.-/+oso:  "
echo -e "${c6} \`++:.                           \`-/+/  "
echo -e "${c6} .\`                                 \`/ ${c20}"
