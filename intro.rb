print("hello world")
puts "Hello world :D"
puts "un string".length
puts "otro string".reverse
my_name ="aNdReS"
puts my_name.reverse! #el ! lo guarda en el misma variable
puts my_name.reverse!
puts my_name
puts my_name.upcase
puts my_name.downcase
puts my_name.capitalize
#my_last_name = gets.chomp
#puts my_name + my_last_name
puts "Hola querido#{my_name}!"
puts "Hola querido"+my_name+"!!!!"
puts 1==1
puts 1!=1
puts 1>1
puts 1<1
puts 1>=1
puts 1<=1
puts (1...10) === 7
puts 1.eql? "1"
puts 1.eql? 1
puts 1.equal? "1"
puts 1.equal? 1
puts 1<=>2
puts 2<=>1
puts 1<=>1
puts 1==1 or false
puts "que chimba" if 1==1
puts "que chimba" if 1!=1
if 1==1
  puts "son iguales"
end
uno=1
dos=2
if uno==dos
  puts "mentira"
else
  puts "verdad"
end
if uno==dos
  puts "mentira"
elsif uno!=dos
  puts "verdad"
end
if uno>3 then puts "es mayor" else puts "es menor" end
mi_sentimientico = gets.chomp
case mi_sentimientico
when "mal"
  puts ":("
when "bien"
  puts ":)"
else
  puts ":O"
end
case mi_sentimientico
  when "mal" then puts ":("
  when "bien" then puts ":)"
  else puts ":O"
end

unless mi_sentimientico===":("
  puts "Estoy bien"
end

unless mi_sentimientico ==":)"
  puts "Estoy bien"
else
  puts "Estoy mal"
end
puts "me quiero cortar :(" unless 1==1
