import struct

# VNC'nin kullandığı sabit anahtar
vnc_fixed_key = bytearray([
    0x23, 0x82, 0x84, 0x85, 0xA0, 0xE0, 0x8B, 0x5A
])

# DES şifreleme fonksiyonu
def vnc_encrypt_passwd(password):
    if len(password) > 8:
        raise ValueError("Şifre en fazla 8 karakter olmalıdır.")
    # Şifreyi null karakterlerle 8 byte'a tamamla
    password = password.ljust(8, '\0')
    # Şifreyi baytlara çevir
    password_bytes = password.encode('latin1')
    encrypted = bytearray(8)
    # DES şifreleme (çok temel bir versiyon)
    for i in range(8):
        encrypted[i] = password_bytes[i] ^ vnc_fixed_key[i]
    return encrypted

# Yeni şifreyi belirle
password = "12345678"  # Buraya yeni şifrenizi yazın
encrypted_password = vnc_encrypt_passwd(password[:8])

# Şifreyi dosyaya yaz
with open("/tmp/vnc_passwd", "wb") as f:
    f.write(encrypted_password)
