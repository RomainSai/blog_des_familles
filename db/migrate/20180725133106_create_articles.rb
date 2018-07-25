class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title #titre en strings
    	t.text :content #contenu en text
    	t.belongs_to :user, index: true #articles appartient à User
    	t.belongs_to :category, index: true #articles appartient à Category
      t.timestamps
    end
  end
end
