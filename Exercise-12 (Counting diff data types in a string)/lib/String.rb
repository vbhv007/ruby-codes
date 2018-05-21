class String
  def char_count
    hash = Hash.new(0)
    split('').each do |a|
      case a
      when /[0-9]/ then hash['digits'] += 1
      when /[a-z]/ then hash['lowercase'] += 1
      when /[A-Z]/ then hash['uppercase'] += 1
      else hash['splchar'] += 1
      end
    end
    hash
  end
end
