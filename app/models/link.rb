class Link < ActiveRecord::Base
  attr_accessible :name

  belongs_to :graph
  has_and_belongs_to_many :nodes
end
