require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../songs')
require_relative('../person')

class PersonSpec < MiniTest::Test
  
  def test_person_has_name
    person = Person.new("Julia", 30, "freedom")
    assert_equal("Julia", person.name)
  end  

  def test_person_has_favourite_song
    person = Person.new("Julia", 30, "freedom")

    assert_equal("freedom", person.favourite_song)
  end 
end 


