from itertools import combinations

# Get sums of all subsets of numbers in a list l.
def get_subsums(l):
    sums = {}
    for i in xrange(len(l)+1):
        for comb in combinations(l, i):
            sums[comb] = sum(comb)
    return sorted(sums.items(), key = lambda x: x[1])

# Simulate recognizer for Q.
def qrec(x):
    p = 0.0
    q = 1.0
    while p / q != x:
        print (p, q)
        p += 1
        q -= 1

        if q == 0.0:
            q = p+1
            p = 1.0
    print "output = (%s, %s)" % (p,q)

# Mandelbrot endomorphism simulation
def mandel(c, max_steps = 10):

    def p_c(z):
        return z**2 + c
    
    z = 0
    step_count = 0
    while max_steps > 0:
        z = p_c(z)
        step_count += 1
        max_steps -= 1
        print "Iteration %s: z = %s" % (step_count, z)
        if abs(z) > 2:
            print "Absolute value exceeded 2"
            return False
    print "Magnitude remained below 2 for %s steps." % step_count
    
    
