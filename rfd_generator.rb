require 'open-uri'
require 'json'

json_response = open("http://codemountain.com/api/students/rfd.json").read

students = JSON.parse(json_response)

puts "<html>"
puts "	<head>"
puts "		<title>TSL RFD Students</title>"
puts "		<link rel='stylesheet' href='reset.css' type='text/css'>"
puts "		<link rel='stylesheet' href='styles.css' type='text/css'>"
puts "		<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>"
puts "    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js' type='text/javascript'></script>"
puts "    <script>"
puts "      $(document).ready(function() {"
puts "        $('.thumbnail').on('click', function() {"
puts "          $(this).siblings().fadeToggle();"
puts "        });"
puts "      });"
puts "    </script>"
puts "	</head>"
puts "	<body>"
puts "		<h1>"
puts "			TSL RFD Dev Students"
puts "		</h1>"
puts "		<ul>"

students.each do |student_hash|
  puts "      <li class='frame'>"
  puts "    	  <img class='thumbnail' src='http://codemountain.com#{student_hash["student"]["avatar_url"]}'>"
  puts "    	  <p class='name'>#{student_hash["student"]["name"]}</p>"
  puts "    	</li>"
end

puts "    </ul>"
puts "	</body>"
puts "</html>"
