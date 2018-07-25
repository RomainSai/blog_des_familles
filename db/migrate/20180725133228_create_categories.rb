class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    	t.string :name #name en string
      t.timestamps
    end
  end
end
