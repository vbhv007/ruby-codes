class Interest
  def initialize(&block)
    @block = block
  end

  def difference(prin, time)
    diff = (prin * ((1 + 0.1)**time - 1)) - prin * 0.1 * time
    @block.call(diff)
  end
end
