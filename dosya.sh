#!/bin/sh

FILE=`zenity --file-selection --title="İşlem yapmak istediğiniz dosyayı seçiniz"`

case $? in
         0)	 
		fonk()
		{
                kullanici=`zenity --list \
  		 --height=250 --title="İznini değiştirmek istediğiniz kullanıcıyı seçiniz." --column=Kullanıcılar \
   		user group other all --separator=':'`
   
		[[ $kullanici = user* ]] && kullanici="u"

		[[ $kullanici = *group* ]] && kullanici="g"

		[[ $kullanici = *other* ]] && kullanici="o"
		
		[[ $kullanici = *all ]] && kullanici="a"
		
		if [ ! $kullanici ]
		then
			zenity --warning \
			--height=250 --text="İzni değişecek kullanıcıyı seçmediniz." 
			fonk
			return 0
		fi
		
				
		islem=`zenity --list \
  		 --title="İzni eklemek mi çıkarmak mı istiyorsunuz?" --column=İşlemler \
   		+ - --separator=':'`
   		
		if [ ! $islem ]
		then
			zenity --warning \
			--height=250 --text="Değiştirmek istediğiniz izni seçmediniz." 
			fonk
			return 0
		fi
		
		
		izin=$(zenity --height=250 --list --checklist \
  		 --title="Değiştirmek istediğiniz izni seçiniz." --column=İşlemler --column=Seçenekler \
   		FALSE read FALSE write FALSE execution --separator=':')
   
		[[ $izin = read* ]] && chmod "$kullanici""$islem"r $FILE

		[[ $izin = *write* ]] && chmod "$kullanici""$islem"w $FILE

		[[ $izin = *execution ]] && chmod "$kullanici""$islem"x $FILE		

		[[ "$izin" ]] || zenity --warning \
		--height=250 --text="Değişecek izni seçmediniz."		
   		}
   		
   		fonk
   		;;
   		  		 
   		 
         1)
                zenity --warning \
		--height=250 --text="İzni değişecek dosyayı seçmediniz.";;
        -1)
                zenity --warning \
		--height=250 --text="Beklenmeyen bir hata oluştu.";;
esac
}

