require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list_items)
    @list = list_items
  end

  def each(&block)
    @list.each(&block)
  end
end

list1 = MyList.new(1, 2, 3, 4)

puts(list1.my_all? { |e| e < 5 })
puts(list1.my_all? { |e| e > 5 })
puts(list1.my_any? { |e| e == 2 })
puts(list1.my_any? { |e| e == 5 })
puts(list1.my_filter(&:even?))
