require 'open-uri'
require 'openssl'
require 'json'
require 'ap'

resource_url = "https://graph.facebook.com/36820235/friends?fields=picture&access_token=AAACEdEose0cBAJPO3YaSIZApqujuGxkT1LYMxJOKKbNzLqJpuD3TvoEMiZAwMi0B5w8fOggCavkOSrLBOs3in0EoDUvggeAf4eqMHqEAZDZD"
friends_id=[]
friends_id_gender=[]


#Finding the percentage of chicks versus dudes in my facebook

friends = JSON.parse(open(resource_url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read)
friends=friends["data"]



#max=100
#friends= friends.slice!(0,max)
friends_id=[]

friends.each do |my_friends|
friends_id << my_friends["picture"]["data"]["url"]
end


#Displaying the Page

puts "<html>"
puts "	<head>"
puts "		<title>Photo Representation of my Facebook friends</title>"
puts "		<link rel='stylesheet' href='reset.css' type='text/css'>"
puts "		<link rel='stylesheet' href='styles.css' type='text/css'>"
puts "		<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>"
puts "	</head>"
puts "	<body>"
puts "		<h1 style='color:black;'>"
puts "			Showing my Facebook friends"
puts "		</h1>"
puts "		<ul>"


friends_id.length.times do |x|


puts "<li class='frame'>"
puts "<img class='thumbnail' src='#{friends_id[x]}'>"
puts "    	</li>"
end


puts "    </ul>"
puts "	</body>"
puts "</html>"







