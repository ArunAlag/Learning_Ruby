=begin
 1) How do we create array?
    // Way 1
    <variable_name> = [<content>, <content>, ...]

    // Way 2
    Array.new(No.of element, initial value)

 2) How do we access array?
    arr = ["this", "is", "a", "small", "array"]

    <array_name>[index pos]
    arr[3] => "small"

 3) Ruby Built In Methods
    [To access elements]
    <array>.first => will give the first elment
    <array>.first(No.of elem) => Will return the first of how many elements we mentioned
    <array>.last => will give the last element
    <array>.last(No.of elem) => Will return the last of how many elements we mentioned

    [To add / remove elements]
    <array>.push(elem,nth elem) => will add all the elments mentioned in the array
    <array> << elem => We can use the shovel operator to add elements as well
    <array>.pop(No.of elem) = Will remove specified elements and return it as a new array. By default, we dont need to specify any elements and it will remove only the one element from the last index
    <array>.unshift == <array>.push. Difference is, it will add the elements at the beginning of the index
    <array>.shift == <array>.pop . Difference is, it will remove the elements at the beginning of the index

    [Array Manipulation]
    <array>.reverse = will reverse all the element
    <array>.empty? = will return the boolean value
    <array>.include(value)? = will return the boolean value depending on if the value exist or not in the array
    <array>.length = the array length
    <array>.join(*val*) = will combine array values in a string, the optional value will be inserted in between elements
=end

# Adding arrays
puts "Adding arrays \n\n"
array_num1 = [1,2,3];
array_num2 = [4,5,6];

combined_array = array_num1 + array_num2
puts "Combined array result: #{combined_array} \n\n"

# Subtracting array => Will return new array which contains the copy of the first array, removing any element that appear in second array
first_array = [1,23,34,20,12,1]
second_array = [23,12,10]

puts "Substract arrays \n\n"
array_difference = first_array - second_array
puts "Difference = #{array_difference} \n\n"

