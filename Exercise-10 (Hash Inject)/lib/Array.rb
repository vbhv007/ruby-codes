# this is class Array
class Array
  def make_hash
    group_by { |z| z.to_s.length }.map{ |_, value| value }.group_by { |t| t[0].to_s.length.even? ? 'even' : 'odd' }
  end
end
