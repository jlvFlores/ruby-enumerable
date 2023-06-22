# frozen_string_literal: true

require_relative 'my_enumerable'

# Declaring our list class
class MyList
  include MyEnumerable

  def each
    for item in @list
      yield item
    end
  end

  def initialize(*item)
    @list = item
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

# Test each
list.each { |e| puts e }
puts ''
# => 1234

# # Test #all?
puts list.all? {|e| e < 5}
# # => true
puts list.all? {|e| e > 5}
# # => false

# # Test #any?
puts list.any? {|e| e == 2}
# # => true
puts list.any? {|e| e == 5}
# # => false

# # Test #filter
print list.filter {|e| e.even?}
# # => [2, 4]
