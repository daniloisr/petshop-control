class Order < ActiveRecord::Base
  module Status
    OPEN = 'aberto'
    CLOSED = 'fechado'
  end

  before_create do
    self.status = Status::OPEN
  end

  belongs_to :dog
  belongs_to :client

  accepts_nested_attributes_for :client, :dog

  default_scope :order => 'created_at desc'
  scope :open_today, where('created_at > ? AND status = ?', Time.now.at_beginning_of_day, Status::OPEN)
  scope :closed_today, where('created_at > ? AND status = ?', Time.now.at_beginning_of_day, Status::CLOSED)

  validates :client, :presence => true
  validates :dog, :presence => true
end
