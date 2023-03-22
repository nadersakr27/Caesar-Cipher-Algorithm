# Caesar-Cipher-Encryption-Algorithm-
This is a simple code with dart language, that defines just two methods to encrypt an decrypt any sting by shifting using Caesar Cipher algorithm.


The code includes two functions to encrypt and decrypt a string using a Caesar Cipher. Here is a step-by-step plan for understanding and documenting the code:

The encrypt() function takes two parameters: the plaintext string and the shift value. It initializes an empty string called ciphertext to store the encrypted string. Then, it loops through each character in the plaintext string.

For each character in the plaintext string, the function finds its character code using the codeUnitAt() method. If the character is an uppercase letter (between 65 and 90 in ASCII codes), the function applies the Caesar Cipher formula to shift the character by the provided shift value while ensuring that the shifted value remains within the range of uppercase letters in ASCII codes. It then converts the shifted value back to its corresponding character using the fromCharCode() method and adds it to the ciphertext string.

If the character is a lowercase letter (between 97 and 122 in ASCII codes), the function applies the same formula but for lowercase letters. Otherwise, if the character is not a letter, the function adds the character as it is to the ciphertext string.

After looping through all characters, the function returns the ciphertext string.

The decrypt() function takes the same parameters as encrypt() and follows a similar procedure. However, it applies the inverse Caesar Cipher formula to shift the characters back to their original values.

The main() function initializes a plaintext string and a shift value, calls the encrypt() function to encrypt the plaintext string using the shift value, and stores the encrypted string in a variable called ciphertext. Then, it calls the decrypt() function to decrypt the ciphertext using the same shift value and stores the decrypted string in a variable called decryptedText.

Finally, it prints the original plaintext, the encrypted ciphertext, and the decrypted text using the print() function.


