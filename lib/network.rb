class Network
  attr_accessor :shows

  attr_reader  :name

  def initialize(name)
    @name  = name
    @shows = []
  end

  def add_show(show)
    shows << show
  end

  def characters_in_upcase
    array = []
    shows.each do |show|
      show.characters.each do |character|
        if character.name === character.name.upcase
        array << character
        end
      end
    end
    array
  end

  def main_characters
    mc_array = []
    characters_in_upcase.each do |character|
      if  character.salary > 500_000
        mc_array << character
      end
    end
    mc_array
  end

  def actors_in_specific_show(show)
    actors = []
      show.characters.each do |character|
        actors << character.actor
      end
    actors
  end

  def actors_by_show
    actors_show = Hash.new(0)
    shows.each do |show|
      actors_show[show] = actors_in_specific_show(show)
    end
    actors_show
  end

  def unique_actors
    actors = []
      shows.each do |show|
        show.characters.each do |character|
          actors << character.actor
      end
    end
    actors.uniq
  end

  def all_actors_in_show(test_show)
    show_array = Array.new
    shows.each do |show|
      show.characters.each do |characters|
        if show == test_show
          show_array << characters.actor
        end
      end
    end
    show_array
  end

  def shows_by_actor
    final_hash = {}
    shows.each do |show|
      unique_actors.each do |actor|
        if all_actors_in_show(show).include?(actor)
          final_hash[actor] = show
        end
      end
    end
  end



end
