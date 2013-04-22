class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.references :node, :link
      t.timestamps
    end
  end
end
