REFERENCE_TABLE = {
    :a => 1,:b => 2,:c => 3,
    :d => 4,:e => 5,:f => 6,
    :g => 7,:h => 8,:i => 9,
    :j => 10,:k => 11,:l => 12,
    :m => 13,:n => 14,:o => 15,
    :p => 16,:q => 17,:r => 18,
    :s => 19,:t => 20,:u => 21,
    :v => 22,:w => 23,:x => 24,
    :y => 25,:z => 26
}

RANGE = 26

def cipher_text(plain_text, shift_value) 
    converted_text = ""
    plain_text.gsub!(/\b\s+\b/, "").downcase! # Remove white spaces and make text small

    # Break text to characters
    plain_text.chars.each do |char|
        # Convert character to numeric value
        char_to_num = REFERENCE_TABLE.select { |symbol| symbol == char.to_sym}
        char_to_num = char_to_num.values.first # Find the hash and the first value
        # Shift the numerics
        cipher_char = cipher_algo(char_to_num, shift_value) 
        # Convert numeric value to character
        num_to_char = REFERENCE_TABLE.select { |symbol, value| value == cipher_char }
        num_to_char = num_to_char.keys.first

        converted_text += num_to_char.to_s
    end

    converted_text
end

def cipher_algo(char_num, shift_value)
     (char_num + shift_value) % RANGE
end; 
    
text = "Arun Alagusunthram"
converted_text = cipher_text(text, 3)

puts "Before ciphering: #{text}"
puts converted_text