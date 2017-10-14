class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = @room.photos
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)

    if @artist.save
        @artist.photo.create(image_params)
        redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to root_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def image_params
    params.require[:photo].permit(:image)
  end

end
