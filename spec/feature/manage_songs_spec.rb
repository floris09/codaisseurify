require 'rails_helper'

feature 'manage songs', js: true do
  let(:artist) { create :artist }
  let!(:song1) { create :song , artist: artist, id: '1000' }
  let!(:song2) { create :song , artist: artist }
  let!(:song3) { create :song , artist: artist }
  let!(:photo) { create :photo,
                artist: artist }


  scenario 'adds a song' do
    visit artist_songs_path(artist)

    fill_in 'new-song', with: 'Song Title'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Song Title')
  end

  scenario 'deletes a song' do
    visit artist_songs_path(artist)

    page.find("#delete-1000").click

    # Needs a nap to delete the songs from DB
    sleep(0.1)

    expect(artist.songs.count).to eq(2)
  end

  scenario 'deletes all songs' do
    visit artist_songs_path(artist)

    page.find("#delete-songs").click

    # Needs a nap to delete the songs from DB
    sleep(0.1)

    expect(artist.songs.count).to eq(0)
  end
end
