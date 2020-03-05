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

def run
puts "Please enter a command:"
command =gets.strip
  case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
     play(songs)
    when "exit"
     exit_jukebox
  end 
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  i=0
  while i< songs.length
  puts "#{i+1}. #{songs[i]}"
  i+=1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  n=gets.strip
  if n.to_i-1<=songs.length
    puts "Playing #{songs[n+1]}"
  else
   puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end