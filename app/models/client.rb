class Client < ActiveRecord::Base
  has_many :dogs, foreign_key: 'owner_id'
  has_many :orders

  validates :name, :presence => true
end
