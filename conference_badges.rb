# Write your code here.

def badge_maker(name)
  #puts "Hello, my name is #{name}." #added this so i could see the output
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
  messages = [] #empty array to hold messages
  array_of_names.each do |element| #loop through each name...
    messages << badge_maker(element) #...pushing each message into messages array using #badge_maker method
  #  messages << "Hello, my name is #{name}." #...pushing each message into messages array ## --could do above line like this too
  end #end for each loop
  #puts messages #outputs messages, so i could see output ### <<<--- must comment out this line for #printer to pass
  messages #return array, which is now full of messages
end #end method

def assign_rooms(array_of_names)
  messages = [] #empty array to hold messages
  array_of_names.each_with_index do |element, index| #loop through each name...
    messages << "Hello, #{element}! You'll be assigned to room #{index+1}!" #...pushing each message into messages array
  end #end for each loop
  #puts messages #outputs messages, so i could see output ### <<<--- must comment out this line for #printer to pass
  messages #return array, which is now full of messages
end #end method

###had trouble with #printer method, cheated and looked at how another learn student did it on github...
def printer(parameter)

  badges = batch_badge_creator(parameter) #new variable holding return of #batch_badge_creator method
  rooms = assign_rooms(parameter) #new variable holding return of #assign_rooms method

  badges.each do |element| #this loops through badges array...
    puts element #and outputs each element
  end #end for each loop

  rooms.each do |element| #this loops through rooms array...
    puts element #and outputs each element
  end #end for each loop
end #end method


####doing this method again to make sure i understand it::::

# def printer(parameter)
#
#   messages1 = batch_badge_creator(parameter)
#   messages2 = assign_rooms(parameter)
#
#   messages1.each do |element|
#     puts element
#   end #end for loop
#
#   messages2.each do |element|
#     puts element
#   end #end for loop
#
# end #end method

#i was trying to push returns of both methods into one array then iterate through that array, outputing the elements within...

# def printer(badges_and_room_assignments)
#   #messages = [] #empty array to hold messages
#   #messages << batch_badge_creator(parameter)
#
#   # parameter.each do |element| #loop through each name...
#   #   #messages << assign_rooms(badges_and_room_assignments)
#   # end #end for each loop
#   #puts messages.first
#
#   puts batch_badge_creator(badges_and_room_assignments)
#
#   # badges_and_room_assignments.each do |element|
#   #   puts element
#   #   #puts batch_badge_creator(parameter)
#   # end
# end #end method


#array.each { |x| puts x }

# def printer(parameter)
#   messages = [] #empty array to hold messages
#   messages << batch_badge_creator(parameter)
#
#   # parameter.each do |element| #loop through each name...
#   #   #messages << assign_rooms(badges_and_room_assignments)
#   # end #end for each loop
#   puts messages.first
# end #end method




# def printer(parameter)
#   messages = [] #empty array to hold messages
#
#   messages << batch_badge_creator(parameter)
#
#   parameter.each do |element| #loop through each name...
#     #messages << assign_rooms(badges_and_room_assignments)
#     puts messages
#   end #end for each loop
#   #puts "#{messages}".to_s.chomp
#   #puts messages.to_s
# end #end method


# def printer(badges_and_room_assignments)
#   messages = [] #empty array to hold messages
#
#   badges_and_room_assignments.each do |element| #loop through each name...
#     messages << batch_badge_creator(badges_and_room_assignments)
#     #messages << assign_rooms(badges_and_room_assignments)
#   end #end for each loop
#   puts messages[0]
#   #puts "#{messages}".to_s.chomp
#   #puts messages.to_s
# end #end method



# def printer(badges_and_room_assignments)
#   messages = [] #empty array to hold messages
#
#   badges_and_room_assignments.each_with_index do |element, index| #loop through each name...
#     messages << batch_badge_creator(badges_and_room_assignments)
#     #messages << assign_rooms(badges_and_room_assignments)
#   end #end for each loop
#   puts messages.first
#   #puts "#{messages}".to_s.chomp
#   #puts messages.to_s
# end #end method
