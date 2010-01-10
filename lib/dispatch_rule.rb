class DispatchRule
  # Accessors
  attr_accessor :weight
  # Class Methods
  
  # initialize
  #---------------------------------------------------------------------------
  def initialize(weight=0)
    @weight = weight
  end

  # Instance Methods

  # Run the rule, called from the dispatcher. Rules should return a list of weighted "units".
  #---------------------------------------------------------------------------
  def run(list=undef)
    raise NotImplementedError, 'Please create a custom DispatchRule with a "run" method.'
  end
end
