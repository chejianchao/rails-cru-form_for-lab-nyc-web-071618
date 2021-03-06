class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show,:edit,:update]
  def show

  end

  def new

  end

  def create
    @artist = Artist.create params.require(:artist).permit(:name, :bio)
    redirect_to artist_path(@artist)
  end

  def edit

  end

  def update
    @artist.update params.require(:artist).permit(:name, :bio)
    redirect_to artist_path(@artist)
  end


  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
