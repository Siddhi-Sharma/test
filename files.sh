#!/bin/bash

echo "Menu "
	echo "1. List Files "
        echo "2. Create a File "
        echo "3. copy files "
        echo "4. Move a file"
	echo "5. compress Files directory "
	echo "6. extract files "
        echo "7. Quit"
        echo "Enter ur Choice \c"
        read Choice
        case"$Choice"in
	1) echo "Listing of files "

            echo "Files are lsited below "
                   ls -l
	2) echo "Creating  of files "
		touch $f1
		echo "File created"

           3) echo "Enter File name to copy \c"
              read f1
              echo "Enter FIle name \c "
          read f2
          if [ -f $f1 ]
          then
                  cp $f1 $f2
              else
                     echo "$f1 does not exist"
              fi
              ;;

         4)
            echo "Enter File name to move \c"
            read f1
            echo "Enter destination \c "
            read f2
            if [ -f $f1 ]
             then 
                 if [ -d $f2 ]
                 then
                      mv $f1 $f2
                 fi
             else
                 echo "$f1 does not exist"
            fi
            ;;
	5) echo "Compressing file directory "
		tar -zcvf archive.tar.gz test1
	echo "files compressed"

	6) echo " extracting "
                 tar xvzf file.tar.gz
        echo "files extracted"

        7) 
             echo "Exit......."
             exit;;
        esac
