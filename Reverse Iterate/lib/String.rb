# this is class String
class String
  def reverse_iterate
    arr = []
    gsub(/\[|\]/, '').split(',').each { |a| arr << a.delete("'") }
    yield arr.pop until arr.empty?
  end
end
