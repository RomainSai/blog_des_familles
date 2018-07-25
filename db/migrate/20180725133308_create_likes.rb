class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
    	t.belongs_to :user, index: true #user appartient à Like
    	t.belongs_to :article, index: true #article appartient à like
      t.timestamps
    end
  end
end
