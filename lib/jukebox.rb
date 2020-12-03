# Add your code here
def help 
 puts "I accept the following commands:"
puts " - help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program "
 end

def list(songs)
songs.each_with_index do |song, num|
  puts "#{num+1}. #{song}"
end
end

def play(songs)
  #first it puts "Please Enter a song name or number:"
  #gets.strip
  puts "Please enter a song name or number:"
   user_input = gets.strip
   if(1..9).to_a.include?(user_input.to_i)
     puts "Playing #{songs[user_input.to_i - 1]}"
   elsif songs.include?(user_input)
     puts "Playing #{user_input}"
   else
     puts "Invalid input, please try again"
   end
 end
 
 
  def exit_jukebox
    puts "Goodbye"
  end

def run(songs) 
  user_input = ""
  puts "Please enter a command:"
  while user_input != nil
  user_input = gets.strip
  if user_input == "help"
    help
    elsif user_input == "list"
    list(songs)
    elsif user_input == "play"
    play(songs)
    elsif user_input == "exit"
    exit_jukebox
    break
  end
end
end
 
    
    
  
       
  