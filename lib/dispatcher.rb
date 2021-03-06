class Dispatcher
  # Accessors
  attr_accessor :message_list, :unit_list, :rule_list

  # Class Methods

  # units_from_list
  #---------------------------------------------------------------------------
  def self.create_units_from_list(list)
    list.map { |x|
      DispatchUnit.new(0, x)
    }
  end

  # Instance Methods

  # initialize
  #---------------------------------------------------------------------------
  def initialize(messages=[], units=[], rules=[])
    @rule_list =  rules
    @message_list = messages
    @unit_list = units
  end

  # dispatch_algorithm
  #---------------------------------------------------------------------------
  def dispatch_algorithm(data)
    raise NotImplementedError, 'Subclass Dispatcher and define your own "dispatch_algorithm" method.'
  end

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
    data = @rule_list.map { |rule| rule.run(self.unit_list) }
    self.dispatch_algorithm(data)
  end

end
