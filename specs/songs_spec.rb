require('minitest/autorun')
require('minitest/rg')

require_relative('../songs')
require_relative('../guests')
require_relative('../rooms')

class SongTest < Minitest::Test

  def setup()
    @song1 = Song.new("Meatloaf", "Bat out of hell")
    @song2 = Song.new("Inglebert Humperdink", "Please release me, let me go")
  end

  def test_can_create_song()
    assert_equal(Song, @song1.class())
  end

  def test_song_artist()
    assert_equal("Inglebert Humperdink", @song2.artist)
  end

  def test_song_title()
    assert_equal("Bat out of hell", @song1.title)
  end

end