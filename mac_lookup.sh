#! /bin/bash

$(arp> mac_work.txt)
gawk -i inplace '{print $ 3}' mac_work.txt
tail -n +2 mac_work.txt > tmp_mac_file; mv tmp_mac_file mac_work.txt
cut -c 1-8 mac_work.txt > tmp_mac_file; mv tmp_mac_file mac_work.txt
tr : - < mac_work.txt > tmp_mac_file; mv tmp_mac_file mac_work.txt
tr '[:lower:]' '[:upper:]' < mac_work.txt > tmp_mac_file; mv tmp_mac_file mac_work.txt

while read line;do
	grep $line ./macDB/oui.txt
done < mac_work.txt

rm mac_work.txt

