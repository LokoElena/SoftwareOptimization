puts 'Enter the number of months: '
months = gets.chomp

def fibonacci(n)
    if n < 3
        1
    else
        fibonacci(n - 1) + fibonacci(n - 2)
    end
end

puts 'Couples of rabbits: '  
puts fibonacci(months.to_i + 2)