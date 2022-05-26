def get_player_input
  print 'Please, enter the number of rounds you want to play: '
  gets.chomp.to_i
end

def play(number_of_rounds = get_player_input())
  (1..number_of_rounds).each do |round_number| 
    if round_number % 3 == 0 && round_number % 5 == 0
      puts "ping - pong"
    elsif round_number % 5 == 0
      puts "pong"
    elsif round_number % 3 ==  0
      puts "ping"
    else
      puts round_number 
    end
  end.to_a 
end

 