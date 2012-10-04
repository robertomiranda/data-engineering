class Merchant < ActiveRecord::Base
  attr_accessible :address, :name

  # - Validations
  validates_presence_of :name, :address

  # - Associations
  has_many :items
end
