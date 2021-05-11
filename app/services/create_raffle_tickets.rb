class CreateRaffleTickets
  def initialize(raffle)
    @raffle = raffle
  end

  def create
    (1..1000).each do |numb|
      Ticket.create(raffle: Raffle.find(@raffle.id), number: numb)
    end
  end
end
