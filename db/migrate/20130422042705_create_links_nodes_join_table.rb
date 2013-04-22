class CreateLinksNodesJoinTable < ActiveRecord::Migration
  def change
    create_table :links_nodes, :id => false do |t|
      t.references :link, :node
    end
  end
end
