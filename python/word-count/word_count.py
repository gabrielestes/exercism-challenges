import re
def word_count(phrase):
    phrase = phrase.lower()
    phrase = re.compile(r'[\W+\_\']', re.UNICODE).split(phrase)
    phrase = filter(None, phrase)
    i = 0
    word_hash = {}
    for word in phrase:
        phrase[i] = word.strip("'.,")
        word_hash[word] = phrase.count(word)
        i += 1
    return word_hash

#def clean_up_phrase(phrase)
    
