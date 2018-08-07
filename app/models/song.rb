class Song < ActiveRecord::Base
  belongs_to :artist
  accepts_nested_attributes_for :artist

  def artist_name
     self.artist
  end

  def artist_name=(name)
    binding.pry
    self.artist ? self.artist : Artist.find_or_create_by(name: name)
  end



end
