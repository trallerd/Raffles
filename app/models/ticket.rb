class Ticket < ApplicationRecord
  belongs_to :raffle
  belongs_to :user, optional: true
  has_many :prizes

  def to_s
    number
  end
end
