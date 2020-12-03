require 'pry'
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
  puts"- list : displays a list of songs you can play"
  puts"- play : lets you choose a song to play"
  puts"- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |key,index|
      index += 1 
     puts "#{index}. #{key}"
  end
end

def list_songs(songs)
  listed_songs = {}
  songs.each_with_index do |key,index|
      index += 1 
      listed_songs[index] = key
  end
  listed_songs
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip

  if list_songs(songs)[user_input.to_i]
    puts "Playing #{list_songs(songs)[user_input.to_i]}"
    elsif songs.include?(user_input)
    puts "#{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "exit"
    exit_jukebox
    elsif user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  else
    play(songs)
  end
end



























