# Add your code here

require "pry"

def help 
puts "I accept the following commands:"
puts"- help : displays this help message"
puts"- list : displays a list of songs you can play"
puts"- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

  

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  if (1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include?(input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def list(songs)
 songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end 


def exit_jukebox 
  puts "Goodbye"
end 



###########
#  R U N  #
##########

def run(songs)
  input = "" 
  while input 
  puts "Please enter a command:"
  input = gets.strip 
  case input 
  when "list"
    list(songs)
    when "play"
      list(songs)
      play(songs)
    when "exit"
      exit_jukebox
      break 
    else 
      help
    end 
  end 
end 