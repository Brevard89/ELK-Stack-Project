#!bin/bash
echo "A Quick System Audit Script"
echo "Todays date is  October 13th 2021"
echo "Machine Type Info"
echo "$MACHTYPE"
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"