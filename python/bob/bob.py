def hey(phrase):
    if phrase.isupper():
        return "Whoa, chill out!"
    elif phrase.strip().endswith('?'):
        return 'Sure.'
    elif phrase.strip() == '':
        return 'Fine. Be that way!'
    else:
        return 'Whatever.'
