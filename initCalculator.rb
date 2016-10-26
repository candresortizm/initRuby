puts "RB Calculator"
puts "Type your first number"
opt1 = gets.chomp.to_f
#Capturar el primer operando
puts opt1
puts "type your second number"
opt2 = gets.chomp.to_f
puts opt2
#Capturar el segundo operando
puts "Type your operation (sum,rest,mul,div,pow)"
op = gets.chomp
puts "#{opt1} #{op} #{opt2}"
case op
when "sum","+"
    puts opt1+opt2
  when "rest","-"
    puts opt1-opt2
  when "mult","*"
    puts opt1*opt2
  when "div","/"
    puts opt1/opt2
  when "pow","**"
    puts opt1**opt2
end
=begin
case op
when "+"
    puts opt1+opt2
  when "-"
    puts opt1-opt2
  when "*"
    puts opt1*opt2
  when "/"
    puts opt1/opt2
  when "**"
    puts opt1**opt2
end
#Capture the operation
#print in console the equation as a string
#Write the code to execute the operation sum
#add the
=end
