require('minitest/autorun')
require('minitest/rg')

require_relative ('../guests')
require_relative ('../songs')
require_relative ('../rooms')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Alan")
  end

  def test_can_create_guest
    assert_equal(Guest, @guest.class)
  end

  def test_guest_name()
    assert_equal("Alan", @guest.name)
  end



end