class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.integer :upstream_link_id, :downstream_link_id, :graph_id
      t.timestamps
    end
  end
end
