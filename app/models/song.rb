class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
   artist_name = Artist.find_or_create_by(name: name) 
   self.artist = artist_name
  end
end
