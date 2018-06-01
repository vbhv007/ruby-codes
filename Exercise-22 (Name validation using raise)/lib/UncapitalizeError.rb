# this is class UncapitalizeError
class UncapitalizeError < StandardError
  def message
    'Firstname must start with uppercase letter'
  end
end
