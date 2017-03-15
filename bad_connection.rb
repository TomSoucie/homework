require 'byebug'

puts "HELLO, THIS IS A GROCERY STORE!"

goodbye = 0

while goodbye < 2
    user_input = gets.chomp
    if user_input == "GOODBYE!" && goodbye == 1
        goodbye += 1
        puts "THANK YOU FOR CALLING"
    elsif user_input == "GOODBYE!" && goodbye == 0
        goodbye += 1
        puts "ANYTHING ELSE I CAN DO FOR YOU?"
    elsif (/./ =~ user_input) == nil                #no response (hit enter)
        puts "HELLO?!"
    elsif (/[a-z]/ =~ user_input) != nil            #any lowercase
        puts "I AM HAVING A HARD TIME HEARING YOU"
    elsif (/[\s,^a-z,A-Z]/ =~ user_input) != nil    #ALL CAPS
        puts "NO, THIS IS NOT A PET STORE"
    end
end
   