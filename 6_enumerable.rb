=begin
 Enumerables are set of convinient methods to loop through arrays and hashes

 This enumerables are quite similar to javascripts methods 
=end

#Without enumurables
friends = ['Sasvinth', 'Puven', 'Mithen', 'Ex GF', 'Mivesh']
invite_list = []

for friend in friends 
    unless friend == 'Ex GF'
    invite_list.push(friend)
    end
end

puts "Looping without enumerables \n\n"
puts invite_list

# With enumurables
puts "Looping with enumerables \n\n"
invite_list.clear # => clears the array

# The basic enumerables, #each method, similar to javascript .forEach
# #each method used for array
puts "The basic: #each => for arrays \n\n"
friends.each do |friend|
    unless friend == 'Ex GF'
    invite_list.push(friend)
    end
end
puts "\n"
# #each method used for object
puts "The basic: #each => for objects \n\n"
person = {
    :name => "Arun",
    :age => 25,
    :nationality => "Malaysian"
}

person.each do |key, value|
    puts "Key: #{key} =>  value: #{value}"
end
puts "\n"

# Ruby#each_with_index == JS.forEach(element, index)
puts "The basic: #each_with_index\n\n"
friends.each_with_index do |friend, index|
    if index.even?
    puts "index #{index}: #{friend}"
    end

    if index.odd?
    puts "odd people: #{friend}"
    end
end
puts "\n"
#Ruby#map == JS<array>.map => Returns new array of modifiend values
puts "The basic: #map\n\n"
updated_friends_info = friends.map do |friend|
    friend.upcase
end

puts updated_friends_info
puts "\n"

#Ruby#select == JS<array>.filter => Returns new array with filtered condition
puts "The basic: #select\n\n"
salaries = [1000,1500,2300,5000,2500, 7080, 9010]
high_range = salaries.select do |salary|
    salary > 2500
end

puts high_range
puts "\n"

#Ruby#reduce == JS<array>.reduce => Returns a new value
puts "The basic: #reduce\n\n"
scores = [50,60,70,18,20,50,80]
total_scores = scores.reduce(0) do |accumalator, score| #=> The default value for the accumalator is set to 0 eventhough it's not a must, it's better to put
    accumalator + score
end

puts "Total scores: #{total_scores}"
puts "\n"


puts Hash.new()

#Ruby#reduce => It's far more useful then what we think it is
# Simple voting system for choosing which food we want
invitees = []
food_options = []
votes =[]

print "Welcome to voting system: press 'v' to add options, press 'x' to exit "
answer = gets.chomp

until answer == 'x'
    print "Add your invitees: "
    invitees.push(gets.chomp)
    print "Add more? press 'x' if no, press any key to continue : "
    answer = gets.chomp 
end 

print "Add your food options for people to vote (max 3): "

3.times do 
    food_options.push(gets.chomp)
end

invitees.each_with_index do |invite, index|
    print " #{invitees[index]}, choose your food option 
    1) #{food_options[0]}\n
    2) #{food_options[1]}\n
    3) #{food_options[2]}\n "
    votes.push(gets.chomp)
end

puts "Total votes"
result = votes.reduce(Hash.new(0)) do |accumalator, vote|
    accumalator[vote] += 1
    accumalator
end

puts result