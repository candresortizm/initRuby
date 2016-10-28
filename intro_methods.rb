@products=nil
@products_characteristics = nil
@shopping_car = nil
@user_character = nil

def init
  @products = ["Negan",
    "Glen Eating Pizza",
    "Glen eye out of his head",
    "Abraham",
    "Homero Jay Simpson",
    "Maggie Simpson",
    "Moe",
    "Angry Moe",
    "Jhon Snow",
    "Tyrion",
    "Eleven",
    "El Chavo",
    "Don Ramon",
    "Chompiraz"
  ]


  # { {cost: 3123, color: "red"},{},{} }
  @products_characteristics = {}
  @products.each_with_index do | p , i |
    @products_characteristics[p] = {
      #Math.random()*9+1
      cost: 1+rand(10),
      color: "undefined",
      index_product: i
    }
  end
  @shopping_car={}
  @user_character=nil
end

def print_welcom_msj
  puts "Costume Store #########################"
  puts '#######################################'
  puts '#######################################'
  puts "Please, type the name of your character"
  gets.chomp.downcase
end

#print the matched costumes and return an array
def find_costumes
  # Search in the products the name of the character
  index = 0
  matched_index = []
  until index >= @products.length
    if @products[index].downcase.include? @user_character
      puts "your costume is! cha chan!!! : # #{index}. #{@products[index]}"
      matched_index << index
    end
    index += 1
  end
  matched_index
end

#if the matched_index include the index typed by the user_character
#ask the user if wants to buy it
#Params:
#matched_index:indexes array
def check_and_ask_buy(matched_index)
  if matched_index.include? @user_character
    puts "you choose : #{@products[@user_character]}"
    puts "do you want to buy it. It cost #{@products_characteristics[@products[@user_character]][:cost]} lukas perro ?? (yes/no)"
    if gets.chomp.downcase == "yes"
      return @shopping_car[@products[@user_character]] = "purchased"
    end
  else
    puts "That costume does not exist !!"
  end
end

def select_your_order(matched_index)
  if matched_index.any?
    @user_character = -1
    until matched_index.include? @user_character
      puts "please select your costume! "
      @user_character = gets.chomp.to_i
      check_and_ask_buy matched_index
    end
  else
    puts "We did not find you costume, Sooorryyy! :("
  end
end

def print_shopping_car
  puts "Your Shopping car: " if @shopping_car.any?
  puts @shopping_car if @shopping_car.any?
end

init #init variables
while @user_character != "exit"
  @user_character = print_welcom_msj #print welcome msj, return the user input
  break if @user_character == "exit" #exit condition
  matched_index = find_costumes #find user costumesbased on the @user_character
  select_your_order matched_index#select the order from the user
  print_shopping_car
end






























































# end code
