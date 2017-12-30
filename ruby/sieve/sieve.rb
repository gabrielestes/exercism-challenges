class Sieve
  def sieve(num_primes)
    primes_list =[]
    composites = {}
    until primes_list.count == num_primes
      fetch_primes(num_primes, composites, primes_list)
    end
  end

  def mark_composite(num)
    composites[num] = 'marked'
  end

  def fetch_primes(num_primes, composites, primes_list)
    Inf = 1.0 / 0.0
    (2..Inf).each do |i|
      if composites[i]
        break
      else
        primes_list << i

    end
  end
end
