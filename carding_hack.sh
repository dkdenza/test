#!/bin/bash

	clear
	echo; echo -n 'Loading source files...'
echo -n '.'
sleep 1
echo -n '.'
clear
	if [[ ! -e /root/sqlmap ]]; then
	echo "Maaf boss sqlmap belum di install, Silahkan install dulu :p" | lolcat
	exit
	fi
	cd
	#!/bin/bash

if [[ $USER != "root" ]]; then
	echo "Maaf, Anda harus menjalankan ini sebagai root"
	exit
fi

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
ether=`ifconfig | cut -c 1-8 | sort | uniq -u | grep venet0 | grep -v venet0:`
if [[ $ether = "" ]]; then
        ether=eth0
fi

#vps="zvur";
vps="aneka";

#if [[ $vps = "zvur" ]]; then
	#source="http://"
#else
	source="https://raw.githubusercontent.com/elangoverdosis/deeniedoank"
#fi

# go to root
cd

# check registered ip
wget -q -O IPcarding $source/debian7/IPcarding.txt
if ! grep -w -q $MYIP IPcarding; then
	echo "Maaf, hanya IP yang terdaftar yang bisa menggunakan script ini!"
	if [[ $vps = "zvur" ]]; then
		echo "Hubungi: editor ( elang overdosis atau yusuf ardiansyah)"
	else
		echo "Hubungi: editor ( elang overdosis atau yusuf ardiansyah)"
	fi
	rm /root/IPcarding
	exit
fi
cd
function situs() {
	if [[ ! -e /root/uniscan6.2/sites.txt ]]; then
	echo "Zonk, tidak ada situs tersimpan" | lolcat
	exit
	fi
	cd
	less /root/uniscan6.2/sites.txt

	}
function tool_carding() {
         if [[ ! -e /root/BinGoo/bingoo ]]; then
	echo "Maaf boss tool belum di install, Silahkan install dulu :p" | lolcat
	exit
	fi
	cd
	cd BinGoo
	./bingoo
	}
	echo ""
	PS3='Silahkan pilih (1-4):'
options=("Cari Web Vuln" "Hasil Pencarian Web Vuln" "Hacked" "Hacked Manual Sqlmap" "Full Tool Carding" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"Cari Web Vuln")
	 web-vuln.sh
	 break
	     ;;
	  "Hasil Pencarian Web Vuln")
	  clear
	  situs
	  break
	  ;;
	     "Hacked")
	     carding.sh
	 
	     break
	    ;;
	    "Hacked Manual Sqlmap")
	    cd sqlmap && ./sqlmap.py -h
	    echo "Contoh: 
	    
	    Ketik: ./sqlmap.py -u http://www.siteTARGET.com --dbs (Enter)" | lolcat
	   cd sqlmap
	   
	
	    break
	    ;;
	    "Full Tool Carding")
	    clear
	    tool_carding
	  
	    break
	    ;;
	    #"PHPKIT")
	    #clear
	   # cd
	    #./phpkit.sh
	    #break
	  #  ;;
	    "Quit")
	    exit
	    break
	    ;;
	
	    *) echo invalid option;
	    esac
	    done
