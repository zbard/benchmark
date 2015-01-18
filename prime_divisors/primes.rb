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

def integers_having_prime_divisors(from, to, n_divisors)
  (from..to).count do |i|
    n_prime_divisors(i) == n_divisors
  end
end

from = 2
to = (ARGV.first || 10000000).to_i
n_divisors = 2
result = integers_having_prime_divisors(from, to, n_divisors)
puts "#{from} #{to} #{n_divisors} #{result}"
