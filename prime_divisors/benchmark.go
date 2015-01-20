package main

import "fmt"

func prime_divisors(num int) (ans int) {
	ans = 0
	div := 2

	for div*div <= num {
		if num%div == 0 {
			for num%div == 0 {
				num = num / div
			}
			ans++
		}
		div++
	}

	if num > 1 {
		ans++
	}
	return
}

func count(a, b, k int) (num int) {
	num = 0
	for ; a < b+1; a++ {
		if prime_divisors(a) == k {
			num++
		}
	}
	return
}

func main() {
	var a, b, k int
	a = 2
	b = 10000000
	k = 2
	fmt.Printf(" Number of integers between %d and %d, each having exactly %d prime divisors : %d\n", a, b, k, count(a, b, k))
}
