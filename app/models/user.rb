class User < ActiveRecord::Base
  attr_accessible :name

  # - Validations
  validates_presence_of :name
end
