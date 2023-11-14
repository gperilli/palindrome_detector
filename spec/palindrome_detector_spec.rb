# spec/example_spec.rb
require_relative '../palindrome_detector'

describe "palindrome_detector" do
  it "should return 'not a a palindrome' for an empty string" do
    expect(palindrome("")).to eq " is not a palindrome"
  end

  it "should return 'not a a palindrome' for a non-palindromic word" do
    expect(palindrome("wagon")).to eq "wagon is not a palindrome"
  end

  it "should return 'is a palindrome' for a simple palindromic word" do
    expect(palindrome("laval")).to eq "laval is a palindrome"
  end

  it "should return 'is a palindrome' for a simple palindromic word, ignoring case" do
    expect(palindrome("Laval")).to eq "Laval is a palindrome"
  end

  it "should work for a complex sentence with punctuation" do
    expect(palindrome("Madam, I'm Adam!")).to eq "Madam, I'm Adam! is a palindrome"
  end

  it "should work for an even more complex sentence" do
    expect(palindrome("A man, a plan, a canal -- Panama")).to eq "A man, a plan, a canal -- Panama is a palindrome"
  end
end
