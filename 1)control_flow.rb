=begin
 There are 3 kinds of controls which are

 1) if statements
    => Includes if else and if elsif else statements

 2) switch statements
    => with then when..then and only when

 3) unless statements
    => used when evaluation of the block is expected to be false, used to avoid negation

 4) ternary operator
    => use it when there is only one condition to evaluate true or false
=end 

#Control Flow 1
is_admin = false
is_user = false

page_info = 
if is_admin == true 
    puts("Have all access")
elsif is_user == true
    puts("Give access to the user page")
else 
    puts("Sorry, register first")
end

puts page_info

#Control Flow 2 - Simple condition
grade = 'F'

result = case grade
    when 'A' then puts ("Result: distinction")
    when 'B' then puts ("Result: higher upper class")
    when 'C' then puts ("Result: upper class")
    when 'D' then puts ("Result: pass")
    else "Result : Fail"
end 

puts result

#Control Flow 2 - Multiple line means we can omit the then keyword
cash = 10

interest_rate = case
when cash < 100_000
    puts("Entered 1st")
    total_spent = cash + (cash * 0.01)
    puts("total spent #{total_spent}") 
when cash >= 100_000 && cash < 200_000
    puts("Entered 2nd")
    total_spent = cash + (cash * 0.02)
    puts("total spent #{total_spent}")

when cash >= 200_000 && cash < 400_000
    puts("Entered 3rd")
    total_spent = cash + (cash * 0.03)
    puts("total spent #{total_spent}")
else 
    total_spent = cash + (cash * 0.1)
    puts("total spent #{total_spent}")
end

puts interest_rate

#Control Flow 3
register_user = 
unless is_admin && is_user
    puts("Sorry, register first");
end

puts register_user

#Control Flow 4
age = 18

is_allowed = age >= 18 ? "Enter the pub" : "Sorry no entry"

puts is_allowed