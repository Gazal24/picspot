class PictureController < ApplicationController
  def new
    @picture = Picture.new
  end
  def create
    p params[:picture]
    @picture = Picture.new(params[:picture])
    @album = Album.find(params[:picture][:album_id])
    if @picture.save
      redirect_to :action => 'show', :controller => 'album' , :id => @album.id
    else
      render :action => 'show', :controller => 'album', :id => @album.id
    end
  end
  def show
    @pic = Picture.find(params[:id])
    @album = @pic.album
    @user = @pic.user
    @comments = @pic.comments
  end
end
