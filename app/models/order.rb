class Order < ActiveRecord::Base
  attr_accessible :count, :item, :user

  # - Associations
  belongs_to :item
  belongs_to :user

  # - Validations
  validates_presence_of :count, :item, :user
end
