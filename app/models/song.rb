class Song < ActiveRecord::Base
  belongs_to :artist
  accepts_nested_attributes_for :artists

  def artist_name
     self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name=(name)
    self.artist ? self.artist.name : nil
  end



end
