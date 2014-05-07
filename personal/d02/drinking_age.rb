# drinking age

  puts "Please enter your age."
  # gets.chomp receives user input. .to_i converts the input to an integer.
  user_age = gets.chomp.to_i
  print user_age
  if user_age >= 21
    puts "You're over 21, have a drink!"
    # boolean operators rely heavily on "and" &&, so they can still resolve to true or false. True && true resolve to true. Any other combination will resolve to false.
  elsif user_age >= 18 && user_age < 21
    puts "Hang in there, just a little while longer!"
  else user_age < 18
    puts "Sorry dude...grab yourself a Shirley Temple."
  end
