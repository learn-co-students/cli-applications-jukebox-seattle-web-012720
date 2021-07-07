songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index|
    puts "#{index + 1}. " + song
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if songs.any?(input) 
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i < songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end
  
def run(songs)
input = ""
  until input == 'exit' do
    puts "Please enter a command:"
    input = gets.strip
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
    else
      puts "Invalid command, please try again"
    end
  end
end

