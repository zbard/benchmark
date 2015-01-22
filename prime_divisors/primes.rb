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

def is_prime(n)
  return true if n == 2
  (2..Math.sqrt(n)).all? { |d| n % d != 0 }
end

# @return The numbers of primes between @p from and @p to (both
# inclusive).

def n_primes_between(from, to)
  (from..to).count { |n| is_prime n }
end

# @return The number of primes less than or equal to @ n.

def pi(n)
  n_primes_between(2, n)
end

def main
  n = (ARGV.first || 10000000).to_i
  result = pi(n)
  puts "#{n} #{result}"
end

if __FILE__ == $0
  main
end
