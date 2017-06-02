require("pry")
class Room
  attr_accessor :name, :singers, :songs

  def initialize(name)
    @name = name
    @singers = []
    @songs = []
  end

  def singers_in_room()
    return @singers.count()
  end

  def add_guest_to_singers(guest)
    @singers << guest
  end

  def remove_guest_from_singers(guest)
    @singers.delete(guest)
  end

  def records_in_room()
    return @songs.count()
  end

  def add_record_to_songs(record)
    @songs << record
  end

  def remove_record_from_songs(record)
    @songs.delete(record)
  end

  def too_many_people?()
    if singers_in_room < 3
      return false
    else 
      return true
    end
  end


end