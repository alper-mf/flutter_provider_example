# Düşyeri Provider Task


# Task Ekranlar
![screens](https://raw.githubusercontent.com/alper-mf/dusyeri_provider_task/main/app_preview/app_preview.jpg)


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






