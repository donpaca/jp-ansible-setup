# 🛠️ Ansible ile J-Platform Uygulama Sunucusu Kurulumu

Bu proje, Rocky Linux üzerinde **Zulu JDK 8**, **Apache Tomcat 9** ve **J-Platform** kurulumunu otomatikleştiren bir Ansible playbook’u sunar.  
Kurulum, gerçek sunucu kaynaklarını kullanacak şekilde tasarlanmıştır — konteyner değil, doğrudan sistem kurulumudur.

---

## 📦 İçerik

| Dosya            | Açıklama                                                                 |
|------------------|--------------------------------------------------------------------------|
| `setup-app.yml`  | Kurulumu yapan Ansible playbook                                          |
| `inventory.ini`  | Hedef sunucu bilgilerini tutan Ansible envanter dosyası                  |
| `cleanup.sh`     | Önceki kurulumları temizlemek için bash script                          |

---

## ⚙️ Kullanım

Önce hedef sunucuya Ansible kurulu olmalı. Daha sonra bu repo içeriğini `/opt/jp-ansible-app/` dizinine kopyalayın.

Kurulumu başlatmak için:

```bash
cd /opt/jp-ansible-app/
ansible-playbook -i inventory.ini setup-app.yml

🧹 **Temizlik (Opsiyonel)**

Önceki kurulumları sıfırlamak için:
```bash
./cleanup.sh

🔎 **Detaylı Açıklama ve Makale**

Kurulumun nasıl yapıldığını, neden Ansible tercih ettiğimizi ve tüm süreci detaylı anlattığım makaleye aşağıdan ulaşabilirsiniz:

https://www.linkedin.com/pulse/ansible-ile-otomatik-sunucu-kurulumu-tomcat-zulu-jdk-ve-k%C4%B1l%C4%B1%C3%A7arslan-okfvf

📌 **Gereksinimler**
	•	Rocky Linux 9.x
	•	Ansible (hedef sunucuya kurulu olacak)
	•	root yetkisi veya sudo izni
