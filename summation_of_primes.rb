class SummationOfPrimes

  def calculate(input)
    puts sum_all_found_primes_upto(input)
  end

  private

  # def eliminate_all_even_numbers_upto(input) # assume input is > 3
  #   (3..input).select{|x| x.odd?}
  # end

  def find_all_primes_upto(input)
    (3..input).select{|x| is_prime?(x)}
  end

  def is_prime?(n)
    (2...n).each { |i| return false if n%i == 0 }
    true
  end

  def sum_all_found_primes_upto(input)
    find_all_primes_upto(input).inject(:+)
  end

end

a = SummationOfPrimes.new
a.calculate(2000000)