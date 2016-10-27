class CreateImageDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :image_details do |t|
      t.integer :image_id
      t.string :image_path

      t.timestamps
    end
  end
end
