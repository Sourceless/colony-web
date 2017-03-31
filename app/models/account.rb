class Account < ApplicationRecord
  belongs_to :owner, foreign_key: 'owner_id', class_name: 'User', optional: true # required for current account flow
  has_many :users
  has_many :teams

  after_create :set_uuid

  validates :owner, presence: true, allow_nil: true
  validates :name, presence: true, length: { minimum: 5 }

  def set_uuid
    unless self.uuid
      self.uuid = SecureRandom.uuid
      self.save
    end
  end
end
