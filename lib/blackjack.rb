def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(11)+1
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets()
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(num)
  prompt_user
  input = get_user_input()
  if input == 's'
  elsif input == 'h'
  num = num + deal_card
  else
    invalid_command
  end
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  while sum < 22 do
  sum = hit?(sum)
  display_card_total(sum)
  end
  end_game(sum)
end
    
