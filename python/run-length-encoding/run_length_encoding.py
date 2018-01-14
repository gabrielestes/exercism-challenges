import re

def decode(string):
    decoded_string = ''
    character_list = re.findall('[0-9]*[A-Za-z]', string)
    for c in character_list:
        letter = str(re.search(r'[A-Za-z]', c).group())
        if c[0].isdigit():
            num = int(re.search(r'\d+', c).group())
            decoded_string += num * letter
        else:
            decoded_string += letter
    return decoded_string

def encode(string):
    encoded_string = ''
    previous = ''
    i = 0
    count = 0
    for letter in string:
        if previous and letter != previous:
            if count > 1:
                encoded_string += str(count) + previous
            else:
                encoded_string += previous
            previous = letter
            count = 1
        else:
            count += 1
            previous = letter
        if i == len(string) - 1:
            if count > 1:
                encoded_string += str(count) + previous
            else:
                encoded_string += string[i]
        i += 1
    return encoded_string
