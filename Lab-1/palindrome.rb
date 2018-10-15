print "Enter a value to check: ";
value = gets.chomp
class String
  def palindrome?
    letters = self.downcase.scan(/\w/)
    letters == letters.reverse
  end
end
puts value.palindrome? 