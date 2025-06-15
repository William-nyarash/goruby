class House
  @@count = 0

  def self.count
    @@count 
  end

  def self.report_no_of_count
    puts "Ther are #{count} of instances of #{name} class"
  end

  attr_accessor :color, :style

  def initialize(color,style)
    @color = color
    @style = style
    @@count += 1
  end
  
  def details
    puts "This is a #{color} #{style} house instance"
  end

end

puts House.report_no_of_count

house = House.new("blue","modern")
puts house.details
p House.report_no_of_count
p House.count