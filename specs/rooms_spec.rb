require('minitest/autorun')
require('minitest/rg')
require('pry')

require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Reggae")
    @guest1 = Guest.new("Avie")
    @guest2 = Guest.new("Jan")
    @song1 = Song.new("Four non Blondes", "What's going on")
    @song2 = Song.new("HothouseFlowers", "It'll be easier in the morning")
  end

  def test_can_create_room()
    assert_equal(Room, @room1.class)
  end

  def test_room_name
    assert_equal("Reggae", @room1.name)
  end

  def test_singers_in_room
    assert_equal(0, @room1.singers_in_room())
  end

  def test_add_guest_to_singers()
    @room1.add_guest_to_singers(@guest2)
    assert_equal(1, @room1.singers_in_room()) 
  end

  def test_remove_guest_from_singers()
    @room1.add_guest_to_singers(@guest1)
    @room1.add_guest_to_singers(@guest2)
    @room1.remove_guest_from_singers(@guest1)
    assert_equal(1, @room1.singers_in_room()) 
  end

  def test_records_in_room()
    assert_equal(0, @room1.records_in_room())
  end

  def test_add_record_to_songs()
    @room1.add_record_to_songs(@song1)
    assert_equal(1, @room1.records_in_room)
  end

  def test_remove_records_from_songs()
    @room1.add_record_to_songs(@song1)
    @room1.add_record_to_songs(@song2)
    @room1.remove_record_from_songs(@song1)
    assert_equal(1, @room1.records_in_room())
  end



end