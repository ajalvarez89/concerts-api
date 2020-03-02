class Api::V1::ConcertsController < ApplicationController

  before_action :concert_params, only: %i[create]

  def index
    @concerts = Concert.all.order('created_at DESC')

    if @concerts.present?
      serializer = logged_in? ? ConcertLogginSerializer : ConcertSerializer
      render json: @concerts, each_serializer: serializer
    else
      render json: { error: 'No data was found' }, status: :not_found
    end
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)

    if @concert.save
      render json: @concert, status: :created
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def show
    @concert ||= Concert.find(params[:id])
    render json: @concert, status: :ok
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    if @concert.update(params[:concert].permit(:name, :band, :city))
      render json: @concert, status: :ok
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @concert = Concert.find(params[:id])
    if @concert.destroy
      render json: { message: 'Concert deleted' }, status: :ok
    else
      render json: { errors: 'Concert does not deleted' }, status: :unprocessable_entity
    end
  end

  private

  def concert_params
      params.require(:concert).permit(:name, :band, :city)
  end

  def set_cancan_resources
    if logged_in?
    end
  end
end
