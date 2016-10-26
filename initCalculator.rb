puts "RB Calculator"
op=""

until op=="exit"
  puts "Type your first number"
  opt1 = gets.chomp.to_f
  puts opt1
  puts "type your second number"
  opt2 = gets.chomp.to_f
  puts opt2
  puts "Type your operation (sum,rest,mul,div,pow)"
  op = gets.chomp.downcase
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
    when "exit"
      op="exit"
  end
end
