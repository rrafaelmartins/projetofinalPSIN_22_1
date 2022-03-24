class AddDepartmentToSubjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :subjects, :department, foreign_key: true
  end
end
