#this is class BlankNameError
class BlankNameError < StandardError
  def message
    'Lastname cannot be blank'
  end
end
