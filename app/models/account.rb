class Account < ApplicationRecord
  belongs_to :owner, foreign_key: 'owner_id'

  validates :owner, presence: true, uniqueness: true
  validates :name, presence: true, length: { minimum: 1 }
end
