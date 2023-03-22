// Function to encrypt a string using a Caesar Cipher
String encrypt(String plaintext, int shift) {
  String ciphertext = "";
  for (int i = 0; i < plaintext.length; i++) {
    int charCode = plaintext.codeUnitAt(i);
    if (charCode >= 65 && charCode <= 90) { // Uppercase letter
      ciphertext += String.fromCharCode((charCode - 65 + shift) % 26 + 65);
    } else if (charCode >= 97 && charCode <= 122) { // Lowercase letter
      ciphertext += String.fromCharCode((charCode - 97 + shift) % 26 + 97);
    } else { // Non-letter character
      ciphertext += plaintext[i];
    }
  }
  return ciphertext;
}

// Function to decrypt a string encrypted with a Caesar Cipher
String decrypt(String ciphertext, int shift) {
  String plaintext = "";
  for (int i = 0; i < ciphertext.length; i++) {
    int charCode = ciphertext.codeUnitAt(i);
    if (charCode >= 65 && charCode <= 90) { // Uppercase letter
      plaintext += String.fromCharCode((charCode - 65 - shift + 26) % 26 + 65);
    } else if (charCode >= 97 && charCode <= 122) { // Lowercase letter
      plaintext += String.fromCharCode((charCode - 97 - shift + 26) % 26 + 97);
    } else { // Non-letter character
      plaintext += ciphertext[i];
    }
  }
  return plaintext;
}
 void main(List<String> args) {
   String plaintext = "Hello, World!";
  int shift = 70;
  String ciphertext = encrypt(plaintext, shift);
  String decryptedText = decrypt(ciphertext, shift);

print("text : $plaintext");
print("Cipher text: $ciphertext");
print("Decrypted text: $decryptedText");

 }