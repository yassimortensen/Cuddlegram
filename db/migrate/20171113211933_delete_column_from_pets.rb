class DeleteColumnFromPets < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :name
  end
end
