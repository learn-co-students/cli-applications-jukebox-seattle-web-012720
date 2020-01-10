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

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  num = input.to_i
  index = num-1
  if songs.include?(input)
    puts "Playing #{input}"
  elsif  num>0 && num<=songs.length()
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |arr, i|
    puts "#{i+1}. #{arr}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  trig = 0
  out=0
  puts "Please enter a command:"
  input=gets.strip
  
  while out ==0 do
    if input =='help'&&trig==0
      help
      trig=1
    elsif input == 'list'&&trig==0
      list(songs)
      trig=1
    elsif input =='play'&&trig==0
      play(songs)
      trig=1
    elsif input =='exit'&&trig==0
      exit_jukebox
      trig=1
      out=1
    else
      puts "Please enter a command:"
      input=gets.strip
      trig=0  
    end
  end
  
end