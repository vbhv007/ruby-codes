# this is class Array
class Array
  def make_hash
    sort_hash(sort_by(&:length).group_by(&:length))
  end

  def sort_hash(hash)
    even, odd = [], []
    hash.keys.each do |key|
      key.even? ? even << hash[key] : odd << hash[key]
    end
    display_hash(even, odd)
  end

  def display_hash(even, odd)
    hash = Hash.new([])
    hash['odd'] = odd if !odd.length.zero?
    hash['even'] = even if !even.length.zero?
    hash
  end
end
