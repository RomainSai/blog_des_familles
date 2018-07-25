class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :first_name #prénom en strings
    	t.string :last_name #nom en strings
    	t.string :email #email en strings
      t.timestamps
    end
  end
end
