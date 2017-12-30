def distance(strand_a, strand_b):
    i = 0
    distance = 0
    if len(strand_a) == len(strand_b):
        for x in strand_a:
            if strand_b[i] != x:
                distance += 1
            i += 1
        return distance
    else:
        raise ValueError("The supplied strands are not of equal length.")
