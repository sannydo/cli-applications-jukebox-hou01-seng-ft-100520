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

#using a heredoc tho this lab does not require to do so
# def help
# <<~HELP 
# Please enter a command:
# I accept the following commands:
# - help : displays this help message
# - list : displays a list of songs you can play
# - play : lets you choose a song to play
# - exit : exits this program
# HELP
# end



def help
puts "I accept the following commands: "
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

if help == "exit"
  puts "Please enter a command: "
end

#same thing as list below this method, making sure the index starts at 1
# def list(songs) 
#   songs.each_with_index { |item, index|
#     puts "#{index+1}. #{item}"
#   }
# end 

def list(songs)
  songs.each.with_index(1) do |song, i|
    puts "#{i}. #{song}"
  end
end

 def play(songs)
   puts "Please enter a song name or number:"
   user_response = gets.chomp
  
   if (1..9).to_a.include?(user_response.to_i)
     puts "Playing #{songs[user_response.to_i - 1]}"
     elsif songs.include?(user_response)
     puts "Playing #{user_response}"
   else 
     puts "Invalid input, please try again"
   end 
 end 

def exit_jukebox
  puts "Goodbye"
end




#def run(songs)
# user = ""
#   while user != "exit"
#     puts "Please enter a command:"
#     puts "I accept the following commands:"
#     puts "Please enter a song name or number:"
#     user = gets.chomp
  
 
#   if user "list"
#     list(songs)
#   elsif user == "play"
#     play(songs) 
#   elsif user == "help" 
#     help 
#   elsif user "exit" 
#     exit_jukebox
#   end 
#   end 
# end
# end


#README
# A loop can be used to contain the process of capturing user input then deciding
# what to do with it. If this is contained within a loop, as long as the loop
# conditions are met, the user will be able to enter commands over and over.

# Use `if` or `case` statements to determine how your program will respond to a
# user's input. For example, if their input is `"list"`, call the `list` method
# if their input is `"play"`, call the `play` method if their input is `"help"`,
# call the `help` method and if their input is `"exit"`, call the `exit_jukebox`
# method _and_ break out of your loop to stop the program.

 def run(songs)
   help
   puts "Please enter a command: "
   user = gets.chomp
   while user != "exit"
     case user
     when "help"
       play(songs)
       puts "Please enter a command: "
       user = gets.chomp
       when "list"
         list(songs)
         puts "Please enter a command: "
         user = gets.chomp
         when "play"
           play(songs)
           puts "Please enter a command: "
           user = gets.chomp
         end
           help
           exit_jukebox
           break
         end
           help
           puts "Please enter a command: "
           user = gets.chomp
         end
        
       exit_jukebox
  

