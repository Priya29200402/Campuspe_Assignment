#!/bin/bash

# Simple File Manager Script

while true
do
    echo "----------------------"
    echo "1. Create File"
    echo "2. Delete File"
    echo "3. Create Directory"
    echo "4. Delete Directory"
    echo "5. List Files"
    echo "6. Exit"
    echo "----------------------"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter file name: " fname
            touch $fname
            echo "File created."
            ;;
        2)
            read -p "Enter file name: " fname
            rm $fname
            echo "File deleted."
            ;;
        3)
            read -p "Enter directory name: " dname
            mkdir $dname
            echo "Directory created."
            ;;
        4)
            read -p "Enter directory name: " dname
            rmdir $dname
            echo "Directory deleted."
            ;;
        5)
            ls -l
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
