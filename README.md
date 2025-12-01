# Windows Aktivasyon Scripti

Bu script, Windows işletim sistemini KMS (Key Management Service) sunucusu kullanarak aktive etmek için tasarlanmış bir batch dosyasıdır.

## ⚠️ Önemli Uyarılar

- Bu script yalnızca eğitim amaçlıdır
- Yasal Windows lisansı satın almanız önerilir
- Script, yönetici (administrator) yetkileri gerektirir
- Kendi sorumluluğunuzda kullanın

## 🚀 Kullanım

1. `activate_windows.bat` dosyasına sağ tıklayın
2. **"Yönetici olarak çalıştır"** seçeneğini tıklayın
3. Script otomatik olarak aktivasyon işlemini gerçekleştirecektir

Alternatif olarak, dosyaya çift tıkladığınızda script otomatik olarak yönetici izni isteyecektir.

## 📋 Script Ne Yapar?

1. **Yönetici kontrolü**: Script yönetici yetkisiyle çalışıp çalışmadığını kontrol eder
2. **Temizlik işlemleri**: Mevcut ürün anahtarlarını ve KMS ayarlarını temizler
   - `/upk`: Ürün anahtarını kaldırır
   - `/cpky`: Kayıt defterinden ürün anahtarını temizler
   - `/ckms`: KMS sunucu bilgilerini temizler
3. **Servis başlatma**: Lisans ve güncelleme servislerini başlatır
   - LicenseManager servisi
   - Windows Update servisi (wuauserv)
4. **Ürün anahtarı yükleme**: Windows 10/11 Pro için KMS client anahtarı yükler
5. **KMS aktivasyonu**: KMS sunucusuna bağlanır ve aktivasyon yapar
6. **Aktivasyon**: `/ato` komutuyla lisansı aktive eder

## 🔑 Kullanılan Ürün Anahtarları

Script içerisinde kullanılan anahtarlar, Microsoft'un resmi KMS client setup anahtarlarıdır:
- `W269N-WFGWX-YVC9B-4J6C9-T83GX` - Windows 10/11 Pro

## 🛠️ Gereksinimler

- Windows 10 veya Windows 11
- Yönetici (Administrator) yetkileri
- İnternet bağlantısı (KMS sunucusuna erişim için)

## 📝 Notlar

- Aktivasyon genellikle 180 gün geçerlidir
- Süresi dolduğunda script tekrar çalıştırılabilir
- KMS sunucusu olarak `kms8.msguides.com` kullanılmaktadır

## 🔧 Sorun Giderme

Script çalışmazsa:
1. İnternet bağlantınızı kontrol edin
2. Antivirüs programınızı geçici olarak devre dışı bırakın
3. Windows Defender'ı geçici olarak kapatın
4. Yönetici olarak çalıştırdığınızdan emin olun

## 📜 Lisans

Bu proje yalnızca eğitim amaçlıdır. Kullanıcılar kendi sorumluluklarında kullanmalıdır.

---

**Not**: Yasal bir Windows lisansı satın almanız önerilir. Bu script yalnızca test ve eğitim amaçlı sunulmuştur.
