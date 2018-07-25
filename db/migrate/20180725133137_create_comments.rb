class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.text :content #contenu en Text
    	t.belongs_to :user, index: true #User appartient à Comment
    	t.belongs_to :article, index: true #Article appartient à Comment
      t.timestamps
    end
  end
end
