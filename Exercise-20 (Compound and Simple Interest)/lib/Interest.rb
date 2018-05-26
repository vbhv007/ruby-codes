class Interest
  def initialize(&block)
    @block = block
  end

  def difference(prin, time)
    int = (prin * ((1 + 0.1)**time - 1)) - prin * 0.1 * time
    @block.call(int)
  end
end
