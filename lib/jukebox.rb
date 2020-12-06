# Add your code here
require 'pry'

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

def list(array)
  array.each_with_index do |track, index|
    puts "#{index + 1}. #{track}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  song_choice_int = song_choice.to_i
  if array.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif song_choice_int <= array.length && song_choice_int != 0
    puts "Playing #{array[song_choice_int - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  keep_asking = true
  while keep_asking == true do
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == "exit"
      exit_jukebox
      keep_asking == false
      break
    elsif user_input == "help"
      help
    elsif user_input == "list"
      list(array)
    elsif user_input == "play"
      play(array)
    end
  end
end
