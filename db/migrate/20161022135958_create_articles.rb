class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :publish_date
      t.string :expiry_date
      t.string :active
      t.string :boolean
      t.string :image_id
      t.integer :section_id
      t.text   :sub_title
      t.text   :description
      t.integer :author_id
      t.string :string

      t.timestamps
    end
  end
end
