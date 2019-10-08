require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song
    # or song.save
    song
  end
  
  def self.new_by_name(song_name)
    song = Song.create
    song.name = song_name
    song
end

def self.create_by_name(song_name)
  self.new_by_name(song_name)
 
end

def self.find_by_name(song_name)
  self.all.find {|song| song.name == song_name}
end
#   @@all.each do |song|
#     if song.name == song_name
#       return song
#     else 
#       @all.find?(song_name)
#     end
#   end

def self.find_or_create_by_name(song_name)
  if self.find_by_name(song_name)
    self.find_by_name(song_name)
else
  self.create_by_name(song_name)
  
end
  
  
  
  
end

def self.alphabetical
  
  @@all.sort_by {|song| song.name}

end

def self.new_from_filename(song)
 x = self.create_by_name(song)
 x
  
end


end




