class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def index_az
    @artists = Artist.order_by_name
  end

  def index_za
    @artists = Artist.order_by_name_desc
  end

  def index_created_asc
    @artists = Artist.order_by_created_at
  end

  def index_created_desc
    @artists = Artist.order_by_created_at_desc
  end

  def show
    @artist = Artist.find(params[:id])
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
