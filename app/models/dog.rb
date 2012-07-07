class Dog < ActiveRecord::Base
  belongs_to :owner, :class_name => 'Client'
  has_many :orders

  validates :name, :presence => true
end
