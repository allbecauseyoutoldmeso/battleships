class Ship

  attr_reader :length, :orientation

  def initialize(length)
    @orientation = ['vertical', 'horizontal'].sample
    @length = length
  end

end
