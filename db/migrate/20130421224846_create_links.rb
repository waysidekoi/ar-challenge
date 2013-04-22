class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.references :graph

      t.timestamps
    end
  end
end
