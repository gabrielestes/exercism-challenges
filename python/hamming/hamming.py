def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("The supplied strands are not of equal length.")
    strand_pairs = zip(strand_a, strand_b)
    distance = len([pair for pair in strand_pairs if pair[0] != pair[1]])
    return distance
