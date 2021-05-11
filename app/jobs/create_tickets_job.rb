class CreateTicketsJob < ApplicationJob
  queue_as :default

  def perform(raffle)
    CreateRaffleTickets.new(raffle).create
  end
end
