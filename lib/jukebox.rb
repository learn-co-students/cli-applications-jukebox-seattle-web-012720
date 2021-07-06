require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program" 
end

def play(songs)
  puts 'Please enter a song name or number:'
  answer = gets.strip
  if songs.include?(answer)
    puts "Playing #{answer}"
  else 
    answer = answer.to_i - 1
    if (answer >= 0) && (answer <= songs.length)
      puts "Playing #{songs[answer]}"
    else 
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  answer = gets.strip
  until answer == "exit"
    if answer == "play"
      play(songs)
      puts "Please enter a command:"
      answer = gets.strip
    elsif answer == "help"
      help 
      puts "Please enter a command:"
      answer = gets.strip
      elsif answer == 'list'
        list(songs)
        puts "Please enter a command:"
        answer = gets.strip
        else 
            puts "Please enter a command:"
            answer = gets.strip
        end
      end
  exit_jukebox
end
