class SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end

  def show
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_songs_path(@song.artist)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params.merge(artist_id: params[:artist_id]))
    redirect_to artist_songs_path(params[:artist_id])
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to root_path
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
