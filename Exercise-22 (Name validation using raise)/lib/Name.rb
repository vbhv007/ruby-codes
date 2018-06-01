require_relative 'BlankNameError.rb'
require_relative 'UncapitalizeError.rb'
# this is class Name
class Name
  attr_accessor :lastname, :firstname

  def initialize(firstname, lastname)
    raise BlankNameError if lastname.nil?
    raise UncapitalizeError unless firstname[0] =~ /[A-Z]/
    @lastname = lastname
    @firstname = firstname
  end

  def full_name
    "Your name is #{firstname} #{lastname}"
  end
end
