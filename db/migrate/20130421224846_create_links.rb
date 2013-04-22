class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.integer :upstream_node_id, :downstream_node_id, :graph_id

      t.timestamps
    end
  end
end
