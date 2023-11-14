def palindrome(a_string)
  just_letters = a_string.gsub(/[^a-zA-Z]/, "").downcase
  palindrome_detector_message = just_letters == just_letters.reverse ? "#{a_string} is a palindrome" : "#{a_string} is not a palindrome"
  palindrome_detector_message = just_letters.empty? ? " is not a palindrome" : palindrome_detector_message
  puts palindrome_detector_message
  return palindrome_detector_message
end

# Get the name from the command-line arguments
a_string = ARGV[0]

# Check if the name is provided
if a_string.nil?
  puts "Please provide a name as a command-line argument."
else
  palindrome(a_string)
end
