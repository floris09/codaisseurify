class SongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
    @song_ids = @songs.ids
  end

  def show
    @song = Song.find(params[:artist_id, :id])
  end

  def new
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    song = @artist.songs.new(song_params)

    if song.save
       render status: :created, json: song
    else
       render status: 402, json:  {
       errors: song.errors
     }.to_json
    end
end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
