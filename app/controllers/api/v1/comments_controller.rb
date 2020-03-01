module Api
  module V1
    class CommentsController < ApplicationController
      def create
        @concert = Concert.find(params[:concert_id])  
        if @concert.comments.create(params[:comment].permit(:name,:body))
          render json: @concert.comments, status: :created
        else 
          render json: @concert.errors, status: :unprocessable_entity
        end 
      end
    end
  end
end