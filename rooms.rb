require( "pry" )

class Room
  attr_reader :room, :playlist, :price
  def initialize(room)
    @room = room
    @space = []
    @playlist = []
    @price = 50
    @till  = []
  end

  def room_is_booked
    return @space.count
  end

  def add_person(person)
    # binding.pry
    @space << person
  end      
  
  def check_room_spaces
    if @space.count < 2
      return true
    else
      return "fully booked"
    end 
  end 

  
  def check_out(person_name)
    for person in @space
      if person == person_name
        @space.delete(person)
      end
    end    
  end

   
  
  def add_songs_to_playlist(songs)
    @playlist << songs
  end  
  
  def songs_in_playlist
    for song in @playlist
      song.songs
    end  
  end

  def has_funds(money)
    if money > price
      return true
    else
      return false
    end    
  end 

  # def sell_ticket(money, person_to_add)
  #   if room1.has_funds(money) #&& room1.check_room_spaces
  #     room1.add_person( person_to_add ) 
  #   else 
  #     return "poor you"
  #   end  
  # end 



  def person_cheers_song(pl, favourite_song)
    
    for tune in pl
      if tune == favourite_song
        return "yaaay!"
      else 
        return "didn't find my favourite"   
      end  
    end  
  end 
end   

   
  def count_money
   return   
    
 



