import getpass
import os
import struct
import hashlib

def encrypt_vnc_password(password):
    # VNC uses DES for encryption with a fixed key
    des_key = bytearray("23x@B%hQ", 'utf-8')
    # Password is null-padded to 8 bytes
    password = (password + '\0' * 8)[:8]
    # Create the DES cipher
    from Crypto.Cipher import DES
    des = DES.new(des_key, DES.MODE_ECB)
    # Encrypt the password
    encrypted = des.encrypt(password.encode('utf-8'))
    # VNC stores only the first 8 bytes of the encrypted password
    return encrypted

password = "123456"  # Replace with your new password
encrypted_password = encrypt_vnc_password(password)

with open("/tmp/vnc_passwd", "wb") as f:
    f.write(encrypted_password)
  
