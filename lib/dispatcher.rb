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

  # dispatch_algorithm
  #---------------------------------------------------------------------------
  def dispatch_algorithm
    raise NotImplementedError, 'Please subclass Dispatcher, and write a "dispatch_algorithm" method'
  end

  # units_from_list
  #---------------------------------------------------------------------------
  def units_from_list(list)
    list.map { |x|
      DispatchUnit.new(0, x)
    }
  end

  # Instance Methods

  # add_rule
  #---------------------------------------------------------------------------
  def add_rule(rule)
    @rule_list.push(rule)
    @rule_list.sort! { |x,y| x.weight <=> y.weight }
  end

  # remove_rule
  #---------------------------------------------------------------------------
  def remove_rule(rule)
    @rule_list.delete(rule)
  end

  # dispatch
  #---------------------------------------------------------------------------
  def dispatch
    self.dispatch_algorithm
  end

end
