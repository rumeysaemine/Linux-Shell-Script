# Linux-Shell-Script
Zenity kütüphanesi kullanılarak chmod komutu için hazırlanmış görsel arayüz programıdır.

## Linux chmod komutu
Linux chmod komutu, kullanıcıların dosya ve dizinlere erişim izinlerini değiştirmek için kullanılır.
Linux dosya sisteminde 3 tür kullanıcı bulunur:
* owner ( u )
* group member ( g )
* others ( o )

Linux' ta 3 tür dosya izni bulunur: 

* read ( r )
* write ( w )
* execute ( e )

*ls -l komutu dosya izinlerini görüntülemek için kullanılabilir.*

chmod komutunun temel sözdizimi:
```
chmod <options> <permissions> <file name> 
```
chmod komutunun operatörler ile kullanımı:
\+  ->  izin eklemek için kullanılır.
\-  ->  izin kaldırmak için kullanılır.
\=  ->  var olan izinleri sıfırlayıp yeniden tanımlamak için kullanılır.
```
chmod u=rwe,g=rw,o=r changemod.sh
```

### Kurulum
Zenity kütüphanesini indirmek için aşağıdaki komutu kullanabilirsiniz.
```
sudo apt install zenity
```
Yukarıdaki Code butonuna daha sonra Download ZIP'e tıklayarak zip dosyasını indirin. İndirdiğiniz zip dosyasında bulunan changemod.sh dosyasını bulunduğunuz dizine taşıdıktan sonra dosyayı çalıştırmak için aşağıdaki komutu kullanabilirsiniz.
```
bash changemod.sh
````

## Programın Çalışması
Programı çalıştırdığınızda karşınıza ilk dosya seçim penceresi gelecektir. Buradan erişim izinlerini değiştirmek istediğiniz dosyayı seçiniz. Sonrasında kullanıcı türünü seçmeniz için bir pencere açılacaktır. Burada en az bir kullanıcı türü seçmeniz gerekmektedir. Daha sonraki açılan pencerelerde seçtiğiniz her bir kullanıcı türü için erişim izinlerini belirleyebilirsiniz. Program sonlanmadan önce çıkan bildirim penceresinden dosyanızın erişim izinlerinde yaptığınız değişikliği görebilirsiniz.

## Program Görüntüleri
### Dosya Seçim Penceresi
![dosyaSecim](https://github.com/rumeysaemine/Linux-Shell-Scripting/blob/main/img/img1.jpg)
### Liste Diyaloğu
![listeDiyalog](https://github.com/rumeysaemine/Linux-Shell-Scripting/blob/main/img/img3.jpg)
### İleti Diyaloğu
![iletiDiyalog](https://github.com/rumeysaemine/Linux-Shell-Scripting/blob/main/img/img4.jpg)

## Programın çalışmasını anlatan video
https://youtu.be/H8CYwICR4wI
