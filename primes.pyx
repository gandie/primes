def find_primes(int upto):
    cdef int index, index2
    index = 2
    result = []
    while index < upto:
        prime = True
        index2 = 2
        while index2 < index:
            if (index % index2) == 0:
                prime = False
                break
            if (index2 ** 2) > index:
                break
            index2 += 1
        if prime:
            result.append(index)
        index += 1
    return result
