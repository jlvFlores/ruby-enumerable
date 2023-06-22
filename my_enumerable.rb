# Declaring our module that holds our enumerable methods
module MyEnumerable
  def all?(&block)
    @list.each do |item|
      return false unless block.call(item)
    end
    true
  end

  def any?(&block)
    @list.each do |item|
      return true if block.call(item)
    end
    false
  end

  def filter(&block)
    array = []
    @list.each do |item|
      array << item if block.call(item)
    end
    array
  end
end
