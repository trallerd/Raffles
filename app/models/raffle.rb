class Raffle < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :prizes
  has_many :tickets

end
