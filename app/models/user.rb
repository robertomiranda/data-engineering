class User < ActiveRecord::Base
  attr_accessible :name

  # - Validations
  validates_presence_of :name

  # - Associations
  has_many :orders
  has_many :items, :through => :orders
end
