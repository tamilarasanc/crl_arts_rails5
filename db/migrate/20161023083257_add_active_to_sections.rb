class AddActiveToSections < ActiveRecord::Migration[5.0]
  def change
    add_column :sections, :active, :boolean
  end
end
