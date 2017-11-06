puts (1..45).to_a.sample(6)
puts [*1..45].sample(6)

ary = Array.new
Array.new(3)
Array.new(3,true)

arr = [1,2,3,4]
arr.push(5)
arr << 6

[1,2,3,4,5].select {|num| num.even?} #짝수인가?
a = %w{ a b c d e f }
a.select{|v| v=~ /[aeiou]}  #모음 찾아내기