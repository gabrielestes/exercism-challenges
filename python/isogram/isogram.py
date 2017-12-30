def is_isogram(string):
    string = string.replace(' ','').lower()
    characters = []
    for l in string:
        if l == '-':
            characters.append(l)
        elif l in characters:
            return False
        else:
            characters.append(l)
    return True
