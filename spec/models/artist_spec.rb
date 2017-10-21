require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "Validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_length_of(:bio).is_at_most(1000) }
  end

  describe "Association with song" do
    let!(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it { is_expected.to have_many :songs}

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
