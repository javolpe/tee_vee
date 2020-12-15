class Show
attr_reader :name,
            :creator

  def initialize(name, creator, character_array)
    @name = name
    @creator = creator
    @characters = character_array
  end
end
