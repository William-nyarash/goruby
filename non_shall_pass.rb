USERNAME = "waren"
PASSWORD = "thejourney"
PASSWORD_VAULT = {aws: {username:"waren", password:"12345"}}

puts "welcome to the ultimate password manager"
puts "please sign in to continue"
print "enter your username: "
user_name = gets.chomp

if user_name == USERNAME
  print "Enter password: "
  user_password = gets.chomp
else 
  puts "invalid username"
  exit
end

unless user_password != PASSWORD
  puts "Hello , #{user_name}"
  puts "What would you like to do?"
  puts "1. Add new service credentials"
  puts "2 retrieve an existing service credential"
  puts "3. Exit"
  user_selection = gets.chomp
else
  puts "Invalid password"
  exit
end

case user_selection 
when "1"
    print "Enter the name of the service: "
    new_service = gets.chomp
    PASSWORD_VAULT[new_service] = {}
    p PASSWORD_VAULT
when"2"
   print " Want to  retrieve existing credentials: "
   requested_service_name = gets.chomp
   credentials =  PASSWORD_VAULT[requested_service_name.to_sym]

   puts "Here are the credentials for #{requested_service_name}"

   credentials.each do |key, value|
     puts "#{key} : #{value}"
  end
else
   puts "exiting our program goodbye"
   exit
end