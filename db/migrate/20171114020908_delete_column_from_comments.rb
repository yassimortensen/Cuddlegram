class DeleteColumnFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :pet_id
    add_column :comments, :photo_id, :integer
  end
end
