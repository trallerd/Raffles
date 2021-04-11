class RafflesController < ApplicationController
  before_action :set_raffle, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  # GET /raffles
  def index
    @raffles = Raffle.all.includes(:tickets, :type, :user).left_joins(:prizes).group('raffles.id')
  end

  # GET /raffles/1
  def show; end

  # GET /raffles/new
  def new
    @raffle = Raffle.new
  end

  # GET /raffles/1/edit
  def edit; end

  # POST /raffles
  def create
    @raffle = Raffle.new(raffle_params)

    if @raffle.save
      redirect_to @raffle, notice: 'Raffle was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /raffles/1
  def update
    if @raffle.update(raffle_params)
      redirect_to @raffle, notice: 'Raffle was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /raffles/1
  def destroy
    @raffle.destroy
    redirect_to raffles_url, notice: 'Raffle was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_raffle
    @raffle = Raffle.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def raffle_params
    params.require(:raffle).permit(:user_id, :type_id, :title, :description, :probable_draw_date, :start_date_sale,
                                   :end_date_sale, :draw_date, :ticket_value)
  end
end
