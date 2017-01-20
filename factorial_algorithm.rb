# Project Euler 20

def factorial(stuff)
  arr = (1..stuff).to_a.reverse.each { |i| stuff += stuff * (i - 1)}
  stuff.to_s.split(//).map(&:to_i).inject(:+)
end

p factorial(100)