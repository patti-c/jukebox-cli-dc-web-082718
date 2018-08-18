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
  puts 'I accept the following commands:'
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  bool = false
  
  if song_name.is_a? String
    if songs.include?(song_name) == true 
      puts "Playing #{song_name}"
    else 
      puts "Invalid input, please try again"
    end
  end 
  
  if song_name.is_a? Integer
    puts "Playing #{songs[song_name-1]}"
  end 
  
end