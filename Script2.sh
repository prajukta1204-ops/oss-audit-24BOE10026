#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [Your Name] | Course: Open Source Software

PACKAGE="python3"          # Package name to inspect

# --- Install python3 if not present ---
apt-get install -y python3 &>/dev/null

# --- Check if package is installed ---
if command -v python3 &>/dev/null; then
    echo "$PACKAGE is installed."
    echo "Version : $(python3 --version)"
    echo "Location: $(which python3)"
    echo "License : PSF License"
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case statement: philosophy note based on package name ---
case $PACKAGE in
    python3)
        echo ""
        echo "Philosophy: Python democratised programming for everyone" ;;
    httpd)
        echo "Apache: the web server that built the open internet" ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps" ;;
    firefox)
        echo "Firefox: a nonprofit browser fighting for an open web" ;;
    git)
        echo "Git: the tool that made open source collaboration possible" ;;
    *)
        echo "Unknown package: open source powers the world silently" ;;
esac
