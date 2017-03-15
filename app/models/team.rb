class Team < ApplicationRecord
  belongs_to :account
  belongs_to :manager, foreign_key: 'manager_id'
end
