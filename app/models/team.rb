class Team < ApplicationRecord
  belongs_to :account, optional: true
  belongs_to :manager, foreign_key: 'manager_id', optional: true
  has_many :users
end
