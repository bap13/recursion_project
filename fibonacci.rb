# returns the nth fibonacci number using iteration
def fibs(n)
  first, second, tmp = 0, 1, 0
  while n > 0
    tmp = first + second
    first = second
    second = tmp
    n -= 1
  end
  first
end

# returns the nth fibonacci number using recursion
def fibs_rec(n)
  return n if n < 2
  fibs_rec(n - 1) + fibs_rec(n - 2)
end
