require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'
require 'pry'

class NetworkTest < Minitest::Test
  def test_it_exists
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_show_has_a_name
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
  end

  def test_shows_array_starts_empty
    nbc = Network.new("NBC")

    assert_equal [], nbc.shows
  end
end
