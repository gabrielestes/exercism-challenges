class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    [] if @limit < 2
    prime_nums = (2..@limit).to_a
    prime_nums.each do |n|
      composites = prime_nums.select { |x| (x % n).zero? }
      composites.each { |c| prime_nums.delete(c) unless c == n }
    end
    prime_nums
  end
end
