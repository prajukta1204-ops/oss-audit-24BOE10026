#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Adrija"        
SOFTWARE_CHOICE="Python"          

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(cat /proc/uptime | awk '{print $1}' )
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'=' -f2 | tr -d '"')
DATE_TIME=$(date '+%d-%B-%Y %H:%M:%S')
HOME_DIR=$HOME

# --- Display ---
echo "=================================="
echo "  Open Source Audit — $STUDENT_NAME"
echo "=================================="
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Uptime    : $UPTIME seconds"
echo "Distro    : $DISTRO"
echo "Date/Time : $DATE_TIME"
echo "Home Dir  : $HOME_DIR"
echo "----------------------------------"
echo "OS License: GPL (Linux Kernel)"
echo "Software  : $SOFTWARE_CHOICE"
echo "Py License: PSF License"
echo "=================================="