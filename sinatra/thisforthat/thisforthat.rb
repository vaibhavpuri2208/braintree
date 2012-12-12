require "sinatra"



@startup_array = IO.readlines("startuplist.txt")
@occupation_array = IO.readlines("occupationlist.txt")


get '/' do  
  
#read startup and occupation files 
#file = File.open("startuplist.txt", "r")
#startuplist_contents = file.read
#puts startuplist_contents

#file = File.open("occupationlist.txt", "r")
#occupationlist_contents = file.read
#puts occupationlist_contents

#turn lists to string
#startuplist_contents.each_line
#occupationlist_contents.each_line

#declare 2 arrays / add items to array

#startup_array.push (startuplist_contents)
#occupation_array.push (occupationlist_contents)

#roll 2 dies that have the length of the arrays
#die1 = rand(startup_array.length)
#die2 = rand(occupation_array.length)

#point to the position of the die in the arrays
#startup = startup_array[die1];
#occupation = occupation_array[die2];

#print string as "This" for "That"
#puts "<p>" + startup.chomp + " for " + occupation.chomp + "</p>"


erb :home  
end
