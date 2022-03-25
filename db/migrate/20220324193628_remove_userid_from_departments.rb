class RemoveUseridFromDepartments < ActiveRecord::Migration[7.0]
  def change
    remove_column :departments, :user_id, :bigint
  end
end
