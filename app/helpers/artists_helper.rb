module ArtistsHelper
  def display_artist(song)
    if !song.artist
      link_to 'Edit Song', 'songs/edit'
    end

  end
end
