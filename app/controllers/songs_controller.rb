class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params.merge(artist_id: params[:artist_id]))
    redirect_to @song.artist
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
