class Link < ActiveRecord::Base
  attr_accessible :name, :downstream_node_id, :upstream_node_id, :graph_id

  has_many :upstream_node_ids, :class_name => "Node"

  has_one :downstream_node_id, :class_name => "Node"

  belongs_to :graph


  validates_uniqueness_of :upstream_node_id, :scope => :downstream_node_id

end
