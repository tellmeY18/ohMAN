#!/bin/bash 
# Bash script to scrape man.archlinux and display man page of a package
# Usage: ohman <package name>
# Example: ohman pacman

# Recieve package name argument as a variable

package=$1

# Check if package name is provided

if [ -z "$package" ]; then
    echo "Please provide a package name"
    exit 1
fi

# Check if man page exist already 
# Will Implement later

wget 'https://man.archlinux.org/search?q='$1'%20&go=Go' --quiet --output-document /tmp/boink.html
links /tmp/boink.html
