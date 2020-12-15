class Show
attr_reader :name,
            :creator,
            :characters

  def initialize(name, creator, character_array)
    @name = name
    @creator = creator
    @characters = character_array
  end

  def total_salary
    total_salary = 0
    characters.each do |character|
      total_salary += character.salary
    end
    total_salary
  end

  def highest_paid_actor
    sorted = characters.sort_by{|character| character.salary}
    sorted = sorted.reverse
    sorted[0].actor
  end

  def actors
    actors = []
    characters.each do |character|
      actors << character.actor
    end
    actors
  end

end
