class Contact < ApplicationRecord
  belongs_to :kind
  belongs_to :company
end
