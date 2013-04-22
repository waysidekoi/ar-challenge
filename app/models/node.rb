class Node < ActiveRecord::Base
  attr_accessible :name

  belongs_to :graph
  has_and_belongs_to_many :links


  def parent_and_children_nodes
    # find the parent
    self.links #both parents

    mom_and_dad = self.links
    
    # find the nodes of the parent
    mom_and_dad.map do |link|
      link.nodes.where("node_id != ?", self.id)
    end.flatten.map do |node|
      node.name
    end

  end
end
