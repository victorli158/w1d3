def range(start_num, end_num)
  array = []
  (start_num + 1...end_num).each do |num|
    array << num
  end
  array
end

def recursive_range(start_num, end_num)
  return [] if end_num < start_num
  recursive_range(start_num, end_num - 1) << end_num
end

def add_numbers(arr)
  sum = 0
  arr.each do |el|
    sum += el
  end
  sum
end

def add_rec(arr)
  return arr.first if arr.length == 1
  arr.pop + add_rec(arr)
end

def exp(base, power)
  return 1 if power == 0
  base * exp(base, power - 1)
end

def exp_v2(base, power)
  return 1 if power == 0
  if power.even?
    multiple = exp_v2(base, power / 2)
    multiple * multiple
  else
    multiple = exp_v2(base, (power - 1) / 2)
    base * multiple * multiple
  end
end

class Array
  def deep_dup
    new_array = []
    self.each do |el|
      if el.is_a?(Array)
        new_array << el.deep_dup
      else
        new_array << el
      end
    end
    new_array
  end

  def subsets
    n = self.length
    return [[]] if n == 0
    new_elements = self.take(n-1).subsets
    new_elements.each { |el| el << self[-1] }
    self.take(n-1).subsets + new_elements
  end
end

def fibonacci(n)
  fibs = [1, 1]
  return fibs[n - 1] if n <= 2
  counter = 3
  until counter > n
    fibs << fibs[-1] + fibs[-2]
    counter += 1
  end
  fibs
end

def fib_rec(n)
  fibs = [1, 1]
  return [1] if n == 1
  return [1, 1] if n == 2
  fib_rec(n-1) << fib_rec(n - 1).last + fib_rec(n - 2).last
end

def permuations(array)
  permutations = []
  until permutations.length == factorial(array.length)
    current_array = array.shuffle
    if permutations.include?(current_array) == false
      permutations << current_array
    end
  end
  permutations
end

def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

def permutations(arr)
  permutations = []
  return permutations if permutations.length == factorial(arr.length)

end

def factorial(n)
  return n if n == 1
  n * factorial(n - 1)
end
