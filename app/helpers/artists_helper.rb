module ArtistsHelper
  def display_artist(song)
    if !song.artist
      link_to 'Add Artist', "/songs/#{song.id}/edit"
    end

  end
end
