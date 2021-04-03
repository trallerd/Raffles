class Type < ApplicationRecord
  has_many :raffles
  def to_s
    description
  end
end
