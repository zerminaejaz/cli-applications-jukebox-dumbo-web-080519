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
  songs_array.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  
  if choice.to_i.to_s == choice #if its an int
    choice = choice.to_i
    if choice <= songs_array.length
      puts "Playing #{songs_array[choice-1]}"
    else
      puts "Invalid input, please try again"
    end
  else 
    if songs_array.include?(choice)
      puts "Playing #{choice}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit" do
    case input
    when "help"
      help
    when "list"
      list(songs)
    when"play"
      play(songs)
    else
      exit_jukebox
    end
  end
end