class Contact < ApplicationRecord
  def to_s
    name
  end
  belongs_to :kind
  belongs_to :company
end
