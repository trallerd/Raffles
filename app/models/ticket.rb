class Ticket < ApplicationRecord
  belongs_to :raffle
  belongs_to :user
  has_many :prizes

end
