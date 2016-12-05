require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../songs')
require_relative('../person')

class RoomsSpec < MiniTest::Test
  
  # def test_room_has_number
  #   room_n = Room.new("1")
  #   assert_equal("1", room_n.room)
  # end  


  # def test_room_is_booked
  #   room = Room.new("1")
  #   assert_equal(0, room.room_is_booked)

  # end

  # def test_add_group_to_room
  #   room1 = Room.new("1")
  #   person1 = Person.new("julia", 70)
  #   person2 = Person.new("nikos", 60)

  #   #group1 = [@person1, @person2]
     
  #   room1.add_person(person1)
  #   room1.add_person(person2)
    
  #   assert_equal(2, room1.room_is_booked)
  # end


  # def test_checks_out_group_to_room
    
  #   room1 = Room.new("1")
  #   person1 = Person.new("julia", 30)
  #   person2 = Person.new("nikos", 40)

  #   #group1 = [@person1, @person2]
    
  #   room1.add_person(person1)
  #   room1.add_person(person2)

  #   room1.check_out(person2)
    
    
  #   assert_equal(1, room1.room_is_booked)
  # end

  def test_add_songs_to_playlist
    room1 = Room.new("1")
    song1 = Songs.new("freedom")
    song2 = Songs.new("lalala")
    

    room1.add_songs_to_playlist(song1.name())
    room1.add_songs_to_playlist(song2.name())

    puts room1.playlist

    assert_equal(["freedom", "lalala"], room1.playlist)
  end
  
  # def test_fully_booked
  #   room1 = Room.new("1")
  #   person1 = Person.new("julia", 30)
  #   person2 = Person.new("nikos", 40)
  #   person3 = Person.new("rick", 50)
    
  #   room1.add_person( person1 )
  #   room1.add_person( person2 )

  #   result = room1.add_person( person3 )
  #   assert_equal( "fully booked", result )
  # end
 
  # def test_has_funds                                              
  #   room1 = Room.new("1")
  #   person1 = Person.new("julia", 30)
  #   person2 = Person.new("nikos", 40)
  #   person3 = Person.new("rick", 50)
    
  #   #money_1 = person1.money 
  #   result = room1.has_funds(person1.money)
    
  #   assert_equal( false, result )
  # end
  
  # def test_sell_ticket
  #   room1 = Room.new("1")
  #   person1 = Person.new("julia", 60)
  #   sell_ticket( person1.money, person1)
     
  #   assert_equal(1, room1.room_is_booked)
    
  # end
  
  def test_person_favorite_song
    room1 = Room.new("1")
    person1 = Person.new("julia", 30, "freedom")
    song1 = Songs.new("freedom")
    song2 = Songs.new("lalala")
    

    room1.add_songs_to_playlist(song1.name())
    room1.add_songs_to_playlist(song2.name())
    #puts room1.playlist
    
    result = room1.person_cheers_song( room1.playlist, person1.favourite_song)
    
    assert_equal( ["freedom", "lalala"], room1.playlist )
    assert_equal("freedom", person1.favourite_song)
    assert_equal("yaaay!", result)
  end  


end  