class CreateTreeBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :tree_branches do |t|
      t.string :sentence
      t.integer :up_id
      t.integer :down_id
      t.integer :left_id
      t.integer :right_id

      t.timestamps
    end
  end
end
