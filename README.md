# Linux-Shell-Scripting

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

## Program Görüntüleri
### Dosya Seçim Penceresi
![dosyaSecim](https://github.com/rumeysaemine/Linux-Shell-Scripting/blob/main/img/img1.jpg)
### Liste Diyaloğu
![listeDiyalog](https://github.com/rumeysaemine/Linux-Shell-Scripting/blob/main/img/img3.jpg)
### İleti Diyaloğu
![iletiDiyalog](https://github.com/rumeysaemine/Linux-Shell-Scripting/blob/main/img/img4.jpg)
