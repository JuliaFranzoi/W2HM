require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../songs')
require_relative('../person')

class SongSpec < MiniTest::Test
  
  def test_song
    song1= Songs.new("Freedom")
    assert_equal("Freedom", song1.name())
  end  
end