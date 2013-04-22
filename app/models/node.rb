class Node < ActiveRecord::Base
  attr_accessible :name, :downstream_link_id, :upstream_link_id, :graph_id

  has_one :upstream_link_id, :class_name => "Link"
  has_one :downstream_link_id, :class_name => "Link"
  belongs_to :graph

  validates_uniqueness_of :upstream_link_id, :scope => :downstream_link_id
end
