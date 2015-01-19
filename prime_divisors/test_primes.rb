require 'minitest/autorun'

# Number of primes less than X
# Source: https://primes.utm.edu/howmany.html#pi_def
pi = {10 => 4,
      100 => 25,
      1_000 => 168,
      10_000 => 1229,
      100_000 => 9592}

describe 'primes' do
  it 'should match known counts' do
    pi.each do |x, pi_x|
      result = `ruby primes.rb #{x} | awk '{ print $4 }'`.chomp.to_i
      assert_equal pi_x, result
    end
  end
end
