
class Benchmark {
    private static int primes(int n){
        int i = 0;
        int d=2;


        while(d*d <= n){
            if(n%d == 0){
                while(n%d == 0){
                    n /= d;
                }
                i++;
            }
            d++;
        }

        if(n > 1)
            i++;
        return i;
    }

    private static int count(int a, int b, int k){
        int ans =0;
        for(int i=a;i < (b+1);i++){
            if (primes(i) == k)
                ans++;
        }
        return ans;
    }

    public static void main(String[] arguments) {
        int t,n,a,b,k;
        a = 2;
        b = 10000000;
        k = 2;
        System.out.printf("Number of integers between %d and %d, each having exactly %d prime divisors : %d\n" ,a,b,k,count(a,b,k));
    }
}
