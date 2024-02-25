# NESTED HASHES => similar like array but with the quirks of hashes of course

# CREATE NESTED HASHES => just like regular hashes with the difference being inside the parent hash, we declare a child hash
cars_repository = {
    :honda_city => {:bought => 2018, :distance => "88,000 KM", :owner => "Arun Alagusunthram", :car_value => "RM 50,0000" },
    :benz => {:bought => 2014, :distance => "128,000 KM", :owner => "Venkatachalam", :car_value => "RM 60,0000" },
    :ionic => {:bought => 2019, :distance => "98,000 KM", :owner => "Subramaniam", :car_value => "RM 55,0000" },
    :starex => {:bought => 2020, :distance => "200,000 KM", :owner => "Venkatachalam", :car_value => "RM 76,0000" }
}

# READING NESTED HASH => similar to nested arrays
#=> Get the total distance travelled by honda city create
puts cars_repository[:honda_city][:distance];

# ADDING NEW NESTED HASH ELEMENT
cars_repository[:proton_X50] = {:bought => 2022, :distance => "30,000 KM", :owner => "Venkatachalam", :car_value => "RM 60,0000"}

# ADDING JUST A PROPERTY INTO NESTED HASH
cars_repository[:honda_city][:color] = "Grey";

cars_repository.each do |key, value|
    puts "#{key} => #{value}"
end

puts "\n\n"

# DELETING NESTED HASH OR NESTED HASH'S PROPERTY
cars_repository.delete(:proton_X50) #=> Entire nested hash element
cars_repository[:honda_city].delete(:color) #=> Nested hash element's property

cars_repository.each do |key, value|
    puts "#{key} => #{value}"
end

puts "\n\n"

# USING METHODS WITH NESTED HASHES
# => Get the cars owned by Venkatachalam
owner_filter = cars_repository.filter_map do |name, nested_hash|
    if nested_hash[:owner] == "Venkatachalam"
        name
    end
end

puts owner_filter