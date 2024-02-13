require 'pry-byebug'
=begin
 - Methods are basically functions and it's normally created with the def ... end block
 - The structure looks like this
    def <def_name>
        [code to be executed]
    end

- Just like a normal function, a def can take arguments

- Every method must return a value and ruby is smart enough to infer the return value, so we do not have to implicitly tell it to do so. But if we want, we can 

- Some of the built in methods
    .even?
    .odd?
    .between?
 - The built in methods that return boolean values tend to end with question marks and we can use it in our own methods as well 
=end

# METHODS WITH ARGUMENTS
public def add_new_line(space_val = 1)
    for i in 0..space_val
        puts("\n")
    end
end

# CREATE METHOD
puts "creating methods"
def greetings
    puts 'hello world'
end

add_new_line(1)
greetings
add_new_line(1)


result = add_new_line.class  # It does not return Nil but returns Range because we are using the range object in it
puts result  

# CHAINING METHODS
def add_title(title)
    puts "#{title}"
end

add_title("This is a title test").add_new_line(2)

# Bang Methods

whisper = "HELLO EVERYBODY"

puts "Without changing the value: #{whisper.downcase} "
puts "The orignal value stands: #{whisper} "
# Essentially what is happening is, we did not modify the original value of the variable
# To do change the initial

puts "With Using Bang Method: #{whisper.downcase!} "
puts "After using the Bang Method: #{whisper}"
# The bang method is like whisper = whipser.downcase
