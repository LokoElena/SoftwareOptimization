print "Specify a value: "; @degree = gets.chomp.to_f
print "Specify the scale of value (c - celsius; k - kelvin; f - fahrenheit): "; @primal = gets.chomp
print "Which scale to translate (c - celsius; k - kelvin; f - fahrenheit): "; @converted = gets.chomp

selected_scale = @primal + @converted
if selected_scale.downcase == 'ck'
  answer = @degree + 273.15
elsif selected_scale.downcase == 'cf'
  answer = @degree * 1.8 + 32
elsif selected_scale.downcase == 'fc'
  answer = (@degree - 32) * 0.56
elsif selected_scale.downcase == 'fk'
  answer = (@degree - 32) * 0.56 + 273.15
elsif selected_scale.downcase == 'kf'
  answer = 1.8 * (@degree - 273.15) + 32
elsif selected_scale.downcase == 'kc'
  answer = @degree - 273.15
end
puts answer