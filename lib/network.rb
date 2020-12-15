class Network
  attr_accessor :shows

  attr_reader  :name

  def initialize(name)
    @name  = name
    @shows = []
  end


end
