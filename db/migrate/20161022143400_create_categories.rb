class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :parent_id
      t.string :name
      t.string :full_name
      t.string :full_alias_name
      t.string :alias_name
      t.integer :sequence_number

      t.timestamps
    end
  end
end
