class AddHouseIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :house_id, :integer
  end
end
