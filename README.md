# Zenity-GUI-for-Linux-chmod-Function-

Bu program Linux işletim sistemindeki chmod komutunun işlevlerini yerine getirmek için, Zenity kütüphanesi ile görsel arayüz oluşturularak yapılmış bir programdır. 

## Chmod Komutu Nedir?

Dosya ve dizinlerin erişim haklarını koyan ve bu hakları değiştiren komuttur. Bir dosya ya da dizinin erişim hakkını ancak dosyanın sahibi (owner) ya da üst kullanıcı (superuser) değiştirebilir. Linux'da 3 tür kullanıcı vardır. User, group ve other. Bu kullanıcıların her dosyada sahip olduğu 3 adet izin vardır. Read, write ve execute. Linux'da chmod komutunu kullanarak kullanıcıların dosyalarda sahip olduğu bu izinleri değiştirebiliyoruz.

## Program Kurulumu

Programı kurmak ve çalıştırmak için terminalde aşağıdaki komutlar çalıştırılmalıdır.

`
sudo apt-get install zenity
`

`
sudo apt install git
`

`
git clone https://github.com/MehmetMertFidan/Zenity-GUI-for-Linux-chmod-Function-.git
`

`
cd Zenity-GUI-for-Linux-chmod-Function-
`

`
bash run.sh
`

## Programın Çalışması

Programı çalıştırdığınızda karşınıza aşağıdaki ekran geliyor. Buradan izinlerini değiştirmek istediğiniz dosyayı seçebilirsiniz.

![Screenshot from 2022-12-31 10-45-27](https://user-images.githubusercontent.com/76568439/210131618-0e3ef6b6-63ea-413b-951b-b415e929230d.png)

Dosyayı seçtikten sonra ise aşağıdaki ekranla karşılaşırsınız. Burada iznini değiştirmek istediğiniz kullanıcıyı seçmeniz gerekiyor.

![Screenshot from 2022-12-31 10-46-04](https://user-images.githubusercontent.com/76568439/210131822-269f3b28-31fb-4337-8a86-8c6965a429cc.png)

Ardından değiştirmek isediğiniz izinleri eklemek mi çıkarmak mı istediğinizi seçiyorsunuz. 

![Screenshot from 2022-12-31 10-47-24](https://user-images.githubusercontent.com/76568439/210131827-4b03826a-4337-470f-a273-0c8d21700aed.png)

Sonrasında ise hangi izinleri eklemek ve ya çıkarmak istediğinizi seçiyorsunuz. Şimdiye kadar karşılaştığımız ekranlarda sadece bir seçeneği seçebiliyorduk. Şimdi ise istediğiniz her izni seçerek ekleyebilirsiniz.

![Screenshot from 2022-12-31 10-47-53](https://user-images.githubusercontent.com/76568439/210131835-39c80994-6ccb-48b1-b821-5f551c77c80a.png)

İşlem tamam. 

Programı kullanırken eğer işlemi yapmak istediğiniz dosyayı seçmezseniz ekranda bir hata pop-up'ı çıkıyor ve program sonlanıyor.

Dosyayı seçtikten sonra ise eğer herhangi bir adımda kullanıcıyı, izni ekleyip eklemek mi çıkarmak mı istediğinizi ve ya değiştirmek istediğiniz izinleri seçmezseniz ve devam etmeye çalışırsanız. Ekrana bir hata mesajı çıkıyor ve ardından iznini değiştirmek istediğiniz kullanıcıyı seçme ekranına geri dönüyorsunuz. Aşağıda örnek bir hata mesajı var.

![Screenshot from 2022-12-31 10-53-23](https://user-images.githubusercontent.com/76568439/210131838-2311ad51-b600-42f5-8b2f-c4f4f96a705d.png)

