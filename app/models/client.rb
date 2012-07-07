class Client < ActiveRecord::Base
  has_many :dogs
  has_many :orders

  validates :name, :presence => true
end
