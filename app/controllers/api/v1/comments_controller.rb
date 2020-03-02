
class Api::V1::CommentsController < ApplicationController
  load_and_authorize_resource class: "Comment"

  def create
    @concert = Concert.find(params[:concert_id])
    if @concert.comments.create(comment_params)
      render json: @concert.comments, status: :created
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  private

  def comment_params
      params.require(:comment).permit(:name, :content_body, :concert_id)
  end
end
