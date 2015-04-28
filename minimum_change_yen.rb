coin = [500, 100, 50, 10, 5, 1]
#c[0] = 500, c[1] = 100, ...
c = [6]
i = 0
maisu = 0
sum = 0

print coin.size


puts "input total yen"
yen = gets.chomp.to_i

puts "input the amount of each coin"
print "500 > "
c[0] = gets.chomp.to_i
 
print "100 > "
c[1] = gets.chomp.to_i
 
print "50 > "
c[2] = gets.chomp.to_i
 
print "10 > "
c[3] = gets.chomp.to_i
 
print "5 > "
c[4] = gets.chomp.to_i
 
print "1 > "
c[5] = gets.chomp.to_i
 
 
coin.size.times do |i|
  maisu = yen / coin[i]
 
  if maisu > c[i]
    maisu =  c[i]
  end
 
  yen = yen - (maisu * coin[i])
  sum += maisu
  c[i] = maisu
  i += 1
end
 
puts "total amount of coin >>> #{sum}"
 
c.each do |coins|
  puts coins
end