class Account < ApplicationRecord
  belongs_to :user, foreign_key: 'owner_id'

  validates :user, presence: true, uniqueness: true
  validates :name, presence: true, length: { minimum: 1 }
end
