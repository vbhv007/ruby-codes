class String
  def count_str
    hash = Hash.new([])
    scan(/\w+/).sort_by(&:length).each { |a| hash[a.length] += Array(a) }
    p hash
  end
end
