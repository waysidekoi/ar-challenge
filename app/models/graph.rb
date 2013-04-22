class Graph < ActiveRecord::Base
  
  has_many :nodes
  has_many :links


end
