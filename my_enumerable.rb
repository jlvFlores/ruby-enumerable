# frozen_string_literal: true

# Declaring our module that holds our enumerable methods
module MyEnumerable
  def all?(&block)
    for item in @list
      return false unless block.call(item)
    end
    true
  end

  def any?(&block)
    for item in @list
      return true if block.call(item)
    end
    false
  end

  def filter(&block)
    array = []
    for item in @list
      array << item if block.call(item)
    end
    array
  end
end
