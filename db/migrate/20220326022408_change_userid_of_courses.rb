class ChangeUseridOfCourses < ActiveRecord::Migration[7.0]
  def change
    change_column_null :courses, :user_id, true
  end
end
