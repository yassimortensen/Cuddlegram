class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.integer :pet_id
      t.string :url
      t.timestamps
    end
  end
end
