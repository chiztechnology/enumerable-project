module MyEnumerable
  def my_all?(&block)
    @list.all?(&block)
  end

  def my_any?(&block)
    @list.any?(&block)
  end

  def my_filter(&block)
    @list.filter(&block)
  end
end
