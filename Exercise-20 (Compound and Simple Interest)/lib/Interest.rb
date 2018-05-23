class Interest
  def initialize(&block)
    @block = block
  end

  def difference(p, t)
    printf 'Interest difference= %.2f', @block.call(p, t)
  end
end
