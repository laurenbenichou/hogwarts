class RemoveStudentsIdFromHouses < ActiveRecord::Migration
  def up
    remove_column :houses, :students_id
  end

  def down
    add_column :houses, :students_id, :integer
  end
end
