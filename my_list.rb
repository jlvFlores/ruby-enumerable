require_relative 'my_enumerable'

# Declaring our list class
class MyList
  include MyEnumerable

  def each(&block)
    @list.each do |item|
      block.call(item)
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
# list.each { |e| puts e }
# => 1234

# # Test #all?
list.all? { |e| e < 5 }
# # => true
list.all? { |e| e > 5 }
# # => false

# # Test #any?
list.any? { |e| e == 2 }
# # => true
list.any? { |e| e == 5 }
# # => false

# # Test #filter
# list.filter { |e| e.even? }
# # => [2, 4]
