#helper class to determine if a string is numeric
class String
  def numeric?
    Float(self) != nil rescue false
  end
end

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

def playing_song(song)
  puts "Playing #{song}"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_selection = gets.strip
  valid_song_indexes = songs.length - 1
  song_selection_number = -1
  if(song_selection.numeric?)
    song_selection_number = (song_selection.to_i) - 1
  else
    song_selection_number = songs.find_index(song_selection)
  end
  output = ""
  if((nil == song_selection_number) || ((0..songs.length-1).member?(song_selection_number) == false))
    output = "Invalid input, please try again"
  else
    output = songs[song_selection_number]
  end
  puts output
  output
end

def list(songs)
  songs.each_with_index{|item, index|
    puts "#{index+1}. #{songs[index]}"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  loop do
    command = gets.strip
    if(command == "help")
      help
    elsif(command == "list")
      list(songs)
    elsif(command == "play")
      song = play(songs)
      playing_song(song)
    elsif(command == "exit")
      exit_jukebox
      break
    end 
  end
end

