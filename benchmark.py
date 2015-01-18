import sys

def primes(n):
    d = 2
    ans = 0
    while d*d <= n:
        if (n%d) == 0:
            ans += 1
        while (n % d) == 0:
            n /= d
        d += 1
    if n > 1:
        ans += 1
    return ans

def count(a,b,k):
    ans = 0
    for i in range(a,b+1):
        if primes(i) == k:
            ans += 1

    return ans
 
a = 2        # 2
b = 10000000 # 10^7
k = 2       # 2

print " Number of integers between %d and %d, each having exactly %d prime divisors : %d" % (a,b,k,count(a,b,k))
