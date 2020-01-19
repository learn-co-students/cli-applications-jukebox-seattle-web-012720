require 'pry'
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |songs, index|
    index +=1
  puts "#{index}. #{songs}"
  end  
end

def play(songs)
  puts "Please enter a song name or number:"
  chosen_song = gets.strip
  if (1..9).to_a.index(chosen_song.to_i) != nil
    puts "Playing #{songs[chosen_song.to_i - 1]}"
  elsif songs.index(chosen_song) != nil
    puts "Playing #{chosen_song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  while input != "exit" do
    if input == "list"
      list(songs)
      run(songs)
    elsif input == "play"
      play(songs)
      run(songs)
    elsif input == "help"
      help
      run(songs)
    else input == "exit"
      exit_jukebox
    # else 
    #   puts "Invalid Command"
    #   help
    #   run(songs)
    end
  end
  
  exit_jukebox
end

  
  
  
  
  
  
  
  
  
  
  
  



