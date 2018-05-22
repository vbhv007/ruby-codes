class String
  def highlight_occurrence(str)
    puts gsub(/#{str}/i, "(#{str})")
    occur = scan(/#{str}/i).count
    puts "Total occurrences found: #{occur}"
  end
end
