module ArtistsHelper
  def display_artist(song)
    if !song.artist
      link_to 'Edit Song', "songs/#{song.id}/edit"
    end

  end
end
