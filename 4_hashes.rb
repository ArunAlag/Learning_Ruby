=begin
 - Hashes are ruby version of Objects 
 - How to create Hashes?
    // Way 1
        <objectname> = {
            <key> => <value>,
            <key> => <value>,
        }
    
    // Way 2
        <object_name> = Hash.new #=> will return empty hash {}

 - The key of hash can have anything such as digits, strings and even symbols can be used. More often than not, we use symbols in hashes because of it's memory efficiencies  
=end

# CREATE HASH => Way 1
puts "Hash Creation \n"
person = {
    :name => "Arun",
    :age => 18,
    :password => "sl@shXcoding101"
}

puts person
puts "\n\n"

# READ HASH => WAY 1
puts "Hash Access #1 \n"
puts person[:name] # This way of accessing have potential to return nil if the key does not exist
puts "\n"

# READ HASH => WAY 2
puts "Hash Access #2 \n"
puts person.fetch(:age) # Will show error if the key is not found, hence it's better for error handling
puts "\n"
puts "Hash with default value"
puts person.fetch(:hobby, "videography") # Fetch method can also return default value
puts "\n"

# UPDATE HASH 
puts "Hash update / add \n"
person[:name] = "Arun Alagusunthram" # We can use the same way we access the hash to update the hash's value
person[:nationality] = "Malaysian" # If the hash key does not exist, then it will add the key value pair as a new property in the hash
puts person
puts "\n"

# DELETE HASH
puts "Hash delete \n"

puts "Before delete: #{person}\n"
person.delete(:password)
puts "After delete: #{person}\n"

puts "\n"

=begin
  Handy hash methods
  1) <hash>.keys => returns an array of keys in the hash
  2) <hash>.values => returns an array of values in the hash
  3) <hash1>.merge(<hash2>) => will combine all values in the hashes, if both hashes have common key, the second hash will overwrite the first hash's duplicate value
=end
puts "Hash Methods \n"

puts "Hash Array of keys: #{person.keys}"
puts "Hash Array of values: #{person.values}"

number_hash_1 = {
    :entry1 => 1,
    :entry2 => 2
}

number_hash_2 = {
    :entry2 => 3,
    :entry3 => 4
}

merged_hash = number_hash_1.merge(number_hash_2)
puts "Merged hash result: #{merged_hash}";


