def person_cheers_song(playlist, favourite_song)
  for song in playlist
    if song == favourite_song
      return "yaaay!"
    end  
  end  
end 