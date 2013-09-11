class MyOutfit
  attr_reader :pants
  def initialize
    @pants = [Pants.new, Pants.new]
  end
end

