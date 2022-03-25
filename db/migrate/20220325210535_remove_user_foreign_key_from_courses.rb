class RemoveUserForeignKeyFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :courses, :users
  end
end
