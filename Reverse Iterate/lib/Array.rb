# this is class Array
class Array
  def reverse_iterate
    for i in (0..length)
      yield self[length - i]
    end
  end
end
