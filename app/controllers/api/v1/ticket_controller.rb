class Api::V1::TicketController < Api::V1::ApplicationController
  before_action :authenticate_user!

  def buy
    @ticket = Ticket.find(params[:id])
    if @ticket.update(user: current_user)
      redirect_to raffle_path(@ticket.raffle)
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end
end
