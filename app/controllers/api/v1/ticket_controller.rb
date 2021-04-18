class Api::V1::TicketController < ActionController::API
  def buy
    raffle = Raffle.all.sample

    render json: {
      success: true,
      source: 'Api::V1::Ticket',
      raffle: {
        title: raffle.title,
        user: raffle.user.name
      }
    }
  end
end
