class Prize < ApplicationRecord
  belongs_to :raffle
  belongs_to :ticket
  def to_s
    description
  end
end
