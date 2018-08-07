class Song < ActiveRecord::Base
  belongs_to :artist
  accepts_nested_attributes_for :artist

  def artist_name
     self.artist 
  end

  def artist_name=(name)
    self.artist ? self.artist.name : nil
  end



end
