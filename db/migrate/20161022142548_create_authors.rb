class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :email
      t.boolean :active
      t.string :fullname

      t.timestamps
    end
  end
end
