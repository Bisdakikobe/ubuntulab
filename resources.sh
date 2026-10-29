#!/bin/bash
clear
# Regular Text Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Bold/High-Intensity Text Colors
B_BLACK='\033[1;30m'
B_RED='\033[1;31m'
B_GREEN='\033[1;32m'
B_YELLOW='\033[1;33m'
B_BLUE='\033[1;34m'
B_MAGENTA='\033[1;35m'
B_CYAN='\033[1;36m'
#Log
LOGFILE="/home/devops/practice1/project1/RUDCHK.log"


ram=$(free -h )
up=$(uptime -p --since)
disk=$(df -h )

#results
result=$(

echo "##############################"
date
echo "##############################"

echo -e "${MAGENTA}======Ram,Uptime and Disk space check initiated======"

echo -e "${B_RED}========================== ${RESET}"
echo -e "${B_YELLOW}Current Ram usage:${RESET}"
echo -e "${B_YELLOW}$ram ${RESET}"
echo -e "${B_RED}------------ ${RESET}"
echo -e "${B_GREEN}The system has been up for:${RESET}"
echo -e "${B_GREEN}$up ${RESET}"
echo -e "${B_RED}------------ ${RESET}"
echo -e "${B_BLUE}Disk usage is:${RESET}"
echo -e "${B_BLUE}$disk ${RESET}"
echo -e "${B_RED}========================== ${RESET}"
)
echo -e "$result" >> /home/devops/practice1/RUDCHK.LOG
echo -e "$result"
