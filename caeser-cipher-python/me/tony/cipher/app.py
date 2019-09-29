L2I = dict(zip("ABCDEFGHIJKLMNOPQRSTUVWXYZ", range(26)))
I2L = dict(zip(range(26), "ABCDEFGHIJKLMNOPQRSTUVWXYZ"))

key = 3 | 1 | 7
plaintext = "Mensagem criptografada pela Cifra de Cesar, usando Python."

ciphertext = ""
for c in plaintext.upper():
    if c.isalpha():
        ciphertext += I2L[(L2I[c] + key) % 26]
    else:
        ciphertext += c

deciphertext = ""
for c in ciphertext.upper():
    if c.isalpha():
        deciphertext += I2L[(L2I[c] - key) % 26]
    else:
        deciphertext += c

print(plaintext)
print(ciphertext)
print(deciphertext)
