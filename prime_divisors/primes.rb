# This program prints the value of "pi(n)", i.e. the numbers of primes
# less than @p n.
#
# Arguments:
#
#     n: The number less than equal to which primes must be computed.
#
# Result:
#
#     n pi(n)
#

# @return The number of prime divisors of @p n.

def n_prime_divisors(n)
  return 1 if n == 1
  result = 2
  d = 2
  while d * d <= n
    if n % d == 0
      n /= d
      result += 1
    end
    d += 1
  end
  result
end

# @return The numbers of integers between @p from and @p to (both
# inclusive) having exactly @p n_divisors prime divisors.

def n_nums_with_k_prime_divisors(from, to, n_divisors)
  result = 0
  (from..to).count do |i|
    if n_prime_divisors(i) == n_divisors
      result += 1
    end
  end
  result
end

# @return The number of primes between @p from and @p to (both inclusive).

def n_primes(from, to)
  n_nums_with_k_prime_divisors(from, to, 2)
end

# @return The number of primes less than or equal to @ n.

def pi(n)
  n_primes(2, n)
end

def main
  n = (ARGV.first || 10000000).to_i
  result = pi(n)
  puts "#{n} #{result}"
end

if __FILE__ == $0
  main
end
