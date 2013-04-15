
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

if __name__ == "__main__":

    qrec(1.5)
