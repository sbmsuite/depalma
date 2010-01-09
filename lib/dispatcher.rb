class Dispatcher
  # Accessors
  attr_accessor :message_list, :unit_list, :assignments

  # Class Methods

  # initialize
  #---------------------------------------------------------------------------
  def initialize(message_list=undef, unit_list=undef, rules=undef)
    @rule_list = Array.new
    @rule_list.concat(rules) unless rules == undef
    @message_list = message_list
    @unit_list = unit_list
  end


  # Instance Methods

  # add_rule
  #---------------------------------------------------------------------------
  def add_rule(rule)
    @rule_list.push(rule)
  end

  # remove_rule
  #---------------------------------------------------------------------------
  def remove_rule(rule)
    @rule_list.delete(rule)
  end

  # dispatch
  #---------------------------------------------------------------------------
  def dispatch
          
  end

  # dispatch_algorithm
  #---------------------------------------------------------------------------
  def dispatch_algorithm
    
  end

  # recall
  #---------------------------------------------------------------------------
  def recall
    
  end

end
