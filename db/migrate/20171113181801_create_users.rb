class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :instagram_handle
      t.string :instagram_account_link
      


      t.timestamps
    end
  end
end
