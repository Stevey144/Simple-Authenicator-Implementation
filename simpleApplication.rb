users = [
        {username:"stephen", password:"ogechi"},
        {username:"jack",password:"jacky"},
        {username:"arya",password:"password4"}
]

def auth_user(username,password, list_of_users)

  list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
            break
        end
   end
     "credential are not correct"
end

puts "Welcome to the Authenicator"
25.times {print "-"}
puts
puts "this program will take input from the user and compare the password"
puts "if password is correct you will get back the user object"

attempts = 1

while attempts < 4
  print "Username :"
  username = gets.chomp
  print "Password :"
  password = gets.chomp
  authenication = auth_user(username,password,users)
  puts authenication
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
