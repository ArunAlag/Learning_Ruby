=begin
 There are various kinds of loop

 Loop Group 1 : Unknown ranges

 While Loop
 => Loop Structure 
    while [evaluation_is_true] do
        <code>
        iterator
    end

 Until Loop : Pretty much like Unless Statement where it is used to avoid negation, here the loop will continue until the false condition is met
 => Loop Structure
    until [evaluation_is_false] do 
        <code>
        iterator
    end

 Loop Group 2: Known ranges
 For Loop: Standard loop
 => Loop Structure
    for [evaluator] in [range]
        <code>
    end

 Times Loop: This is a pretty fun loop that works like magic
 => Loop Structure
    [no.of rounds].times do
        <code>
    end

 upto Loop : as it sounds, until the upper range is reached, the loop will run
 downto Loop : the opposite of upto loop, until the lower range is reached the loop will run
 => Loops Structure
    [start value].upto/downto[target value] the loop
=end

# Group 1 : While Loop
looping_round = 0

puts "While Loop Example \n\n"
while looping_round < 10 do
    puts ("Looping round number #{looping_round}")
    looping_round+= 1
end

# Group 1 : Until Loop
iterator = 0
puts "Until Loop Example \n\n"

print("Want the loop to starty? Press y to begin & other keys to continue the program:")
permission = gets.chomp

if permission == "y"
    print("The loop will only stop after you press \"no\"  To continue,Press any key \n")

    until (gets.chomp) == "no" do 
        puts ("Looping round number: #{iterator+1}")
        puts ("Want to continue?")
        iterator += 1
    end
else 
    puts "Next time then\n"
end 

# Group 2: For loop
puts "For Loop Example \n\n"
for i in 0..10 #the range is is inlcusive (will run from 0 to 10) if you want exculsive, just add another dot (0...10) [Will run from 0 to 9]
    print "#{i} "
end
print "\n"

# Group 2: Times Loop
times_round = 10
puts "Times Loop Example \n\n"
times_round.times do |number|
    puts "Round: #{number}"
end

# Group 2: upto and downto Loops
puts "upto Loop Example \n\n"
5.upto(10) do |number|
    puts "upto value: #{number}"
end
print "\n"
puts "downto Loop Example \n\n"
10.downto(2) { |number|  puts "downto value: #{number}"} # The curly braces are used for single line execution