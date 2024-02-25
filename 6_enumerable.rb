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

=begin
 # PREDICATE METHODS => Predicate methods are methods that returns boolean result
 
 # COMMON PREDICATE METHODS
 include? => Returns true if an element in the parameter is included in the array or hash
 all? => Returns true if all the elements behave according to the condition, one false will result in false value being returned
 any? => If any of the elements in the hash or array returns true, it will return true
 none? => Opposite of all, where it will return true only when the condition is not met
=end

# INCLUDE WITHOUT PREDICATE METHODS
puts"\nInclude without predicate methods"
include_example = [1,2,34,5,6,7,8,9]
target = 6
include_result = false

include_example.each do |element|
    if element == target 
        include_result = true
        break
    end
end

puts include_result

puts"\nInclude with predicate methods"
puts include_example.include?(target)


puts"\nAll without predicate methods"
all_example = [1,2,34,5,6,7,8,9]
all_result = false

all_example.each do |element|
    if element >= 1 
        all_result = true
    end
end

puts all_result

puts"\nAll with predicate methods"
puts all_example.all? { |element| element >= 1 }

puts"\nAny without predicate methods"
any_example = [1,2,34,5,6,7,8,9]
any_result = false

any_example.each do |element|
    if element > 30 
        any_result = true
        break
    end
end

puts any_result

puts"\nAny with predicate methods"
puts all_example.all? { |element| element >= 1 }

puts"\nNone without predicate methods"
none_example = [1,2,34,5,6,7,8,9]
none_result = true

none_example.each do |element|
    if element > 30 
        none_result = false
        break
    end
end

puts none_result

puts"\nAny with predicate methods"
puts none_example.none? { |element| element >= 1 }

# ic_database = [
#     {
#         :name => "Arun Alagusunthram",
#         :ic_string => "990330-02-5469",
#         :gender => "male"
#     },
#     {
#         :name => "Seetha valval",
#         :ic_string => "050330-02-5469",
#         :gender => "female"
#     },
#     {
#         :name => "Seetha valval",
#         :ic_string => "050330-02-5469",
#         :gender => nil
#     }
# ]

# gender_exist = ic_database.all? do |person|
#     person.include?(:gender)
# end

# puts ("Gender property exist: #{gender_exist}")