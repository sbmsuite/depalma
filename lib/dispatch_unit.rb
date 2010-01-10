class DispatchUnit
  # Accessors
  attr_accessor :weight, :body

  # Class Methods

  # initialize
  #---------------------------------------------------------------------------
  def initialize(weight, body)
    self.weight(weight)
    self.body(body)
  end

  # Instance Methods

  # promote
  #---------------------------------------------------------------------------
  def promote
    self.weight += 1
  end

  # demote
  #---------------------------------------------------------------------------
  def demote
    self.weight -= 1
  end
end
