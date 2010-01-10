class DispatchUnit
  # Accessors
  attr_accessor :weight, :body

  # Class Methods

  # initialize
  #---------------------------------------------------------------------------
  def initialize(weight, body)
    @weight = weight
    @body = body
  end

  # Instance Methods

  # promote
  #---------------------------------------------------------------------------
  def promote
    @weight += 1
  end

  # demote
  #---------------------------------------------------------------------------
  def demote
    @weight -= 1
  end
end
