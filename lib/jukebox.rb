# Add your code here
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

def list(songs_array)
  numbered_list = []
  songs_array.each_with_index {|song, index|
    puts "#{index+1}. #{song}\n"
  }
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_request = gets.strip
  if songs_array.include?(user_request)
    puts "Playing #{user_request}"
    return
  end
  user_request = user_request.to_i
  if user_request>=1 && user_request <=songs_array.length
    puts "Playing #{songs_array[user_request-1]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  case command.downcase
  when "list"
    list(songs)
    run(songs)
  when "play"
    play(songs)
    run(songs)
  when "help"
    help
    run(songs)
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again!"
    run(songs)
  end
end