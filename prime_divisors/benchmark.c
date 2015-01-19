#include "stdio.h"


#define MAX_SIZE 10000001
#define MAX_FACTORS 10000

int primes(int n)
{
    int i, d;
    int factors[MAX_FACTORS];

    for(i=0;i < MAX_FACTORS; i++)
        factors[i] = 0;

    i = 0;
    d = 2;

    while(d*d <= n){
        if(n%d == 0){
            while(n%d == 0){
                n /= d;
                factors[i] = d;
            }
            i++;
        }
        d++;
    }

    if(n > 1)
        factors[i++] = d;

    return i;
}

int count(int a, int b, int k){
    int ans = 0;
    for(int i = a; i < (b+1); i++){
        if (primes(i)==k)
            ans++;
    }

    return ans;
}

int main(void)
{
    int t,n,a,b,k;
    a = 2;
    b = 10000000;
    k = 2;
    printf(" Number of integers between %d and %d, each having exactly %d prime divisors : %d\n" ,a,b,k,count(a,b,k));
    return 0;
}
