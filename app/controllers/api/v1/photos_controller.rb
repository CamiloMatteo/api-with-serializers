class Api::V1::PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :update, :destroy]

  def index
    @photos = Photo.all
    render json: @photos
  end

  def create
    @photo = Photo.create!(photo_params)
    render json: @photo
  end

  def show
    render json: @photo
  end

  def update
    @photo.update(photo_params)
    render json: @photo if @photo.valid?

    render json: { errors: @photo.errors.full_messages }
  end

  def destroy
    @photo.destroy
    head :no_content
  end

  private

  def photo_params
    params.permit(:title, :photo_url)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end
end
