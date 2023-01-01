#! /bin/bash
FILE=`zenity --file-selection --title="Bir dosya seciniz."` 
  
  case $? in 
  0) 	
  	
	ownerPermission=""
	groupPermission=""
	othersPermission=""

	user=$(zenity --list  --title "Kullanici Turu" --text "Dosya izinlerini degistirmek istediginiz kullanicilari seciniz." --separator=" "\
		--checklist \
		--column "Tercih" \
		--column "Kullanici Turu" \
		False Owner \
		False Group \
		False Other)

	case $? in
	0)
		for  var in $user
		do
			case $var in
			
				Owner) 
				
				permission=$(zenity --list  --title "Izinler" --text "Dosya sahibi icin tanimlamak istediginiz izinleri seciniz." --separator=" "\
				--checklist \
				--column "Tercih" \
				--column "Izinler" \
				False Read \
				False Write \
				False Execute)
				
				if [ $? == 1 ]
				then 
					zenity --warning --text="Dosya sahibi icin degisiklik yapilamadi program calismaya kaldigi yerden devam edecek." 
				else
					ownerPermission+="u="
				fi
				
				
				for var in $permission
				do
					case $var in
						Read)
						ownerPermission+="r" ;;
						Write)
						ownerPermission+="w" ;;
						Execute)
						ownerPermission+="x" ;;
						*)
						ownerPermission+=" ";;
					esac
				done  ;;
				
				Group) 
				
				permission=$(zenity --list  --title "Izinler" --text "Grup uyeleri icin tanimlamak istediginiz izinleri seciniz." --separator=" "\
				--checklist \
				--column "Tercih" \
				--column "Izinler" \
				False Read \
				False Write \
				False Execute)
				
				if [ $? == 1 ]
				then 
					zenity --warning --text="Grup uyeleri icin degisiklik yapilamadi program calismaya kaldigi yerden devam edecek." 
				else
					groupPermission+="g="
				fi

				for var in $permission
				do
					case $var in
					Read)
					groupPermission+="r" ;;
					Write)
					groupPermission+="w" ;;
					Execute)
					groupPermission+="x" ;;
					*)
					groupPermission+=" ";;
					esac
				done ;;
				
				Other) 
				
				permission=$(zenity --list  --title "Izinler" --text "Diger herkes icin tanimlamak istediginiz izinleri seciniz." --separator=" "\
				--checklist \
				--column "Tercih" \
				--column "Izinler" \
				False Read \
				False Write \
				False Execute)
				
				if [ $? == 1 ]
				then 
					zenity --warning --text="Diger herkes icin degisiklik yapilamadi program calismaya kaldigi yerden devam edecek." 
				else
					othersPermission+="o="
				fi

				for var in $permission
				do
					case $var in
					Read)
					othersPermission+="r" ;;
					Write)
					othersPermission+="w" ;;
					Execute)
					othersPermission+="x" ;;
					*)
					othersPermission+=" " ;;
					esac
				done ;;

			esac
		done

		x=${#ownerPermission}
		y=${#groupPermission}
		z=${#othersPermission}

		if [ $x != 0 ]
		then
			if [ $y != 0 -o $z != 0 ]
			then
				ownerPermission+=","
			fi
		fi

		if [ $z != 0 -a $y != 0 ]
		then
			groupPermission+=","
		fi
		
		permissionControl=$ownerPermission$groupPermission$othersPermission 
		echo $permissionControl

		if [ ! -z "$user" ]
		then
			if [ ! -z "$permissionControl" ] 
			then
			verbose=`chmod $permissionControl -v $FILE`
			zenity --info --text="$verbose"
		fi
		else 
			zenity --error --text="Programin dogru calismasi icin  kullanici turu secmeniz gerekmektedir!" 
		fi 
		;;
	 
	1)
		zenity --info --text="Programin dogru calismasi icin  kullanici turu secip tamam butonuna basmaniz gerekmektedir!" ;;
	-1)
		zenity --error --text="Beklenmedik bir hata meydana geldi!" ;;
	esac
	
	;; 
  1)
	zenity --info\
	--text="Programin calismasi icin bir dosya secip tamam butonuna basmaniz gerekmektedir!"
	echo "Hiçbir dosya seçilmedi.";; 
  -1) 
  	zenity --error\
	--text="Beklenmedik bir hata meydana geldi!"
	echo "Hiçbir dosya seçilmedi.";; 
  esac
  
