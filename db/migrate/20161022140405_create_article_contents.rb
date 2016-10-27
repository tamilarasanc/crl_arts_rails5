class CreateArticleContents < ActiveRecord::Migration[5.0]
  def change
    create_table :article_contents do |t|
      t.string :article_id
      t.string :content

      t.timestamps
    end
  end
end
