class Api::V1::CommentsController < ApplicationController
  def index; end

  def show; end

  def create
    @comment = Comment.create(comment_paramas)
    render json: @comment if @comment.valid?

    render json: { errors: @comment.errors.full_messages }
  end

  def update; end
  
  def destroy; end

  private

  def comment_paramas
    params(:content, :owner, :photo_id)
  end
end
