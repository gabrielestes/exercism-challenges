conversion = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}

def to_rna(dna_strand):
    rna = ''
    for x in dna_strand:
        if x in conversion:
            rna += str(conversion.get(x))
        else:
            raise ValueError('Invalid input. Valid inputs may only include the letters G, C, T, and A.')
    return rna