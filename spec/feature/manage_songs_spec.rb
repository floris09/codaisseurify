require 'rails_helper'

feature 'manage songs', js: true do
  let(:artist) { create :artist }
  let(:song1) { create :song , artist: artist }
  let(:song2) { create :song , artist: artist }
  let!(:photo) { create :photo,
                artist: artist }


  scenario 'adds a song' do
    visit artist_songs_path(artist)

    fill_in 'new-song', with: 'Song Title'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Song Title')
  end

end
