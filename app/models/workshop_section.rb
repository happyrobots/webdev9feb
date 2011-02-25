class WorkshopSection < ActiveRecord::Base
  validates_presence_of :title, :description, :order_number
  has_many :users
end
