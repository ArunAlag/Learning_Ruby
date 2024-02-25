=begin
    # NESTED ARRAYS
    - Arrays can store any data types including another array and it's called as Nested Arrays
=end

# NESTED ARRAYS

# CREATE NESTED ARRAY => WAY 1   
nested_arrays = [
    [1,2,3,4,5,6],
    [2,3,4,5,6,7]
]

# READ NESTED ARRAY
puts nested_arrays[0][2] # => will return the first nested array's 3rd element which is 3 in this case

# READING NON EXISTING ELEMENTS
# If we try to access non existing nested element's index, it will return NoMethodError
# If we try to access non exisiting element inside of an existing nested element, it will return nil 

# We can also use the #dig method to access nested array and if it does not find anything, regardless of non existing nested element or non existiting element inside of an existing nested element, it will return nil
puts nested_arrays.dig(1,4)

# CREATE NESTED ARRAY => WAY 2
mutable_array = Array.new(3, Array.new(2)) #=> This will create a new 3 array nested element that have 2 indexes of it's own and since no default value is passed

# Here is the catch, when we are using Array.new, normally we need to pass 2 arguments which are (number of elements, *initial value). The second argument though must always be something that is immutable such as Number, Boolean and not mutable objects such as String, Array or Objects.

mutable_array[0][0] = 1000 #=> [[1000, nil], [1000, nil], [1000, nil]], eventhough we changed only the first element in the first nested elements, the changes effects all 

# The change effects all because Mutable Objects are referenced instead of creating another new copy in memory. Thus when we create Array.new(3, array.new(2)), THe optoinal argument indicates to Ruby that use the same object for all.

# To avoid this, we can use Block Code 
immutable_array = Array.new(3) { Array.new(4,0) }

# How this solves the issues is that, the Array.new(3) works like a loop when we complement it with a block level code, the 3 indicates that it need to loop 3 times to create 3 new nested index elements in which each of those index elements holds 4 of their own elements that have default value of 0

immutable_array[1][3] = 1000
#=> Will change the second nested element's fourth element only

# Push and Pop methods
immutable_array[2].push(100)
puts immutable_array.inspect #=> [[0, 0, 0, 0], [0, 0, 0, 1000], [0, 0, 0, 0, 100]], just like a regular push, only difference is that we are adding the nested index element's position to add the element. In this case I have added the element [100] into the 3 nested element makeing it having 5 elements now

immutable_array[0].pop #=> [[0, 0, 0], [0, 0, 0, 1000], [0, 0, 0, 0, 100]], here we removed the last element in the first nested array element

#ITERATING OVER NESTED ARRAY => Think of it as rows and columns where the nested arrays are like rows and their indexes like column
student_scores = [
    [50,60,70,85,90],
    [55,30,72,81,45],
    [51,66,70,85,91],
    [70,60,53,43,92],
    [74,40,71,81,56],
    [78,63,75,82,53],
]

student_scores.each_with_index do |score_array, index|
    puts "Row #{index} = #{score_array}"

    score_array.each_with_index do |score, index|
        puts "Column #{index} =  #{score}"
    end
end 


# NESTED PREDICATE METHODS
predicate_result = student_scores.any? do |scores|
    scores.all? {|score| score < 80 }
end

=begin 
How we came up with the solution of false?
any? means, just need 1 element to be true to give true result
all? means, all the element must be true to give the true result

=> Outerloop 1
    any = true
    => Innerloop 1
    all = false (Because not all element inside the first nested array is less than 80)

=> Outerloop 2
    any = true
    => Innerloop 2
    all = false (Because not all element inside the first nested array is less than 80)

=> Outerloop 3
    any = true
    => Innerloop 3
    all = false (Because not all element inside the first nested array is less than 80)

=> Outerloop 4
    any = true
    => Innerloop 4
    all = false (Because not all element inside the first nested array is less than 80)

=> Outerloop 5
    any = true
    => Innerloop 5
    all = false (Because not all element inside the first nested array is less than 80)

=> Outerloop 6
    any = true
    => Innerloop 6
    all = false (Because not all element inside the first nested array is less than 80)

=> Since all false, the result will the any's value will be false
=end 

puts predicate_result

chart = [[nil, 1000, nil, nil], [nil, nil, nil, nil], [1000, nil, 0, nil]];
count = 0
chart.each do |row|
    row.each do |elem|
        if elem.nil?
            count += 1
        end
    end
end

puts "total #{count}"