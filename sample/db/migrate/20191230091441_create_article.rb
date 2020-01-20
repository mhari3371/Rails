class CreateArticle < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :ArticleId
      t.text :ArtiocleName
      t.text :description

      t.timestamps
    end
  end
end
