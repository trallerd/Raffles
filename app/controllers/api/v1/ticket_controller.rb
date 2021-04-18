class Api::V1::TicketController < Api::V1::ApplicationController
  def buy
    @raffle = Raffle.first
    @ticket = @raffle.tickets.all.sample
  end

end
