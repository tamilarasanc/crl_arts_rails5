class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :alt_tag
      t.string :extension

      t.timestamps
    end
  end
end
