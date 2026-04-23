# app/models/lead.rb
class Lead < ApplicationRecord
  enum status: { new_lead: 0, contacted: 1, closed: 2 }

  validates :name, :email, presence: true
end
