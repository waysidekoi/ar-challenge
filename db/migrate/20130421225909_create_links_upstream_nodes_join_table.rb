class CreateLinksUpstreamNodesJoinTable < ActiveRecord::Migration
  def change
    create_table :links_upstream_nodes do |t|
      t.references :node, :link
      
      t.timestamps
    end
  end
end


