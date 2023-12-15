import re
import uuid
import time
import hashlib
import random

def generate_keyboard_sequences():
    # Keyboardiin muruud
    keyboard_rows = ['1234567890', 'qwertyuiop', 'asdfghjkl', 'zxcvbnm']

    # Buh bolomjit daraalluudiig oloh
    sequences = set()
    for row in keyboard_rows:
        for i in range(len(row) - 2):
            sequences.add(row[i:i+3]) # Hyazgaariig uurchlug bol +3-iig uurchluud -2-iig tuhain n toonoos n-1 gej tavina

    return sequences

def generate_random_password():
    # Shaardlagatai temdegtuudiin jagsaaltiig oruulj ugnu (tusgai temdegt, tom useg geh met)
    uppercase_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    lowercase_letters = 'abcdefghijklmnopqrstuvwxyz'
    digits = '0123456789'
    special_characters = '!@#$%^&*()_+{}[]:;<>,.?~\\/-'

    # niit temdegtuudiin husnegtiig beldene
    all_characters = uppercase_letters + lowercase_letters + digits + special_characters

    password = ''
    # Neg turluus dor hayj 2-iig avna
    password += ''.join(random.sample(uppercase_letters, 2))
    password += ''.join(random.sample(lowercase_letters, 2))
    password += ''.join(random.sample(digits, 2))
    password += ''.join(random.sample(special_characters, 2))

    # sanamsargui temdegt oruulj 12 toog guitseene
    remaining_length = 12 - len(password)
    password += ''.join(random.sample(all_characters, remaining_length))

    # bairiig ni solij random bolgono
    password = ''.join(random.sample(password, len(password)))

    return password


def check_password(password):
     if len(password) != 12:
          return "12 temdegtees burdeh yostoi"
     if not re.match(r'^(?=.*[A-Z].*[A-Z])(?=.*[a-z].*[a-z])(?=.*\d.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-].*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-])', password):
        return "Yadaj 2 tom useg, 2 jijig letters, 2 too ba 2 tusgai temdegt baih yostoi"
     
     if re.search(r'(.)\1{2,}', password):
        return "1 temdegt 3 udaa davtagdaj bolohgui"

     if re.search(r'(.)\1', password):
         return "2 daraalalsan ijil temdegt baij bolohgui"

     # Too zaagaagui tul 3 gej tootsson
     password_lower = password.lower()
     prohibited_sequences = generate_keyboard_sequences()
     prohibited_sequences_lower = {sequence.lower() for sequence in prohibited_sequences}
     for sequence in prohibited_sequences_lower:
          if sequence in password_lower:
               return f"Daraalalsan bairshiltai 3 temdegt ashiglaj bolohgui: {sequence}"

     # Alivaa toonii tusgai temdegtiig bas avch uzne
     special_char_mapping = {'1': '!', '2': '@', '3': '#', '4': '$', '5': '%', '6': '^', '7': '&', '8': '*', '9': '(', '0': ')'}
     for number, special_char in special_char_mapping.items():
          if number in password:
               if password.count(number) > 1:
                    return f"Daraalalsan bairshiltai 3 temdegt ashiglaj bolohgui {number}"

     return "Password shaardlaga hangaj baina"

for i in range(0, 1000):
    password = generate_random_password()
    # Shalgah zorilgoor 1000 random password uusgej uzsen. herev buruu tuhain password hevlegdene
    print(password)
    if check_password(password=password) == False:
        print(password)
