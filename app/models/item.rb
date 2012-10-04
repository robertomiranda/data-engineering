class Item < ActiveRecord::Base
  attr_accessible :description, :price

  # - Validations
  validates_presence_of :description, :price

  # - Associations
  belongs_to :merchant
  has_many :orders
  has_many :users, :through => :orders
end
