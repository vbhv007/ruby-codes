class String
  def count_occurence
    hash = Hash.new(0)
    scan(/[a-zA-Z]/).each { |a| hash[a] += 1 }
    p hash
  end
end
