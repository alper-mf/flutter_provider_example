# Düşyeri Provider Task



https://user-images.githubusercontent.com/8598467/149181853-4ba3c621-87a1-493c-b138-c1a849ff1937.mp4



# Task Ekranlar
![screens](https://user-images.githubusercontent.com/8598467/149182215-c491570d-5c55-493e-a0d5-60605cd40cdf.jpg)


# Uygulama Hakkında
Düşyeri için hazirlanmis tasktir. Uygulama üzerinden basit bir şekilde login olabilir, tesisleri görüntüleyebilir ve favorilere ekleyebilir. Duyuruları görüntüleyebilir ve kaldırabilirsiniz.

# Kullanılan Paketler:

| Paketler        |            |
| ------------- |:-------------:
| flutter_dotenv | API, TOKEN, local storage key gibi gizli tutulması gerekenler veriler için kullanılmıştır. |
| adaptive_dialog | Cihazın işletim sistemine göre Dialog ekranlarını göstermek için kullanılmıştır | 
| Shared Prefences      | Local storage için kullanılmıştır. |
| Provider | State Management için kullanılmıştır. |



# Uygulamada Kullanılan Başlıca Özellikler

|     ✅    |            |
| ------------- |:-------------:
| Constant Variables | Uygulamanın ekranlarında ayrı ayrı gezmeden, herhangi bir String i ya da rengi tek bir class içerisinden düzenleyebilirsiniz. Bu sayede uygulamayı birden fazla dile çevirirken ya da karanlık mod gibi uyarlamalar da vakit kazandırır. |
| models | Uygulama içerisinde kullanılan reponse dataların kolay yönetimi için eklenmiştir. | 
| Adaptive Widgets     | IOS ya da Android arasında geçiş yaparken tasarımsal farklar ortadan kaldırılır.|
| ChangeNotifierProxyProvider | UserViewModel i diğer modellerden üzerinden çağırmak kullanılmıştır.|






