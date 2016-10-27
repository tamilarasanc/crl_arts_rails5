class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :alias_name
      t.string :entity_type

      t.timestamps
    end
  end
end
