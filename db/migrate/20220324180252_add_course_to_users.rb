class AddCourseToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :course, foreign_key: true
  end
end
