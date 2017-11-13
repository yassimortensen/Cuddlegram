class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :instagram_handle

      t.timestamps
    end
  end
end
