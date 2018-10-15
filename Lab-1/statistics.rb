require 'csv'

class StatOperations
  def initialize(input_file, data_line)
    @data = CSV.read(input_file)[data_line - 1].collect {|i| i.to_f}
    puts 'Choose operation to be done:
      max
      min
      avg
      csv'
    choice = gets.chomp
    puts operation(choice)
  end

  def operation(option)
    @avg = (@data.max + @data.min) / 2.0
    if option.downcase == 'max' 
      @data.max
    elsif option.downcase == 'min'
      @data.min
    elsif option.downcase == 'avg' 
      @avg
    elsif option.downcase == 'csv' 
      sum = 0.0
      @data.each do |i|
        sum += (i - @avg) * 2
      end
      sum / (@data.length - 1)
    end
  end

end

path = './data.csv'
stream = StatOperations.new(path, 2)
