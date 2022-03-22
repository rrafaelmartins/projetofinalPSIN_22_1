class AddUserToSchoolClass < ActiveRecord::Migration[7.0]
  def change
    add_reference :school_classes, :user, foreign_key: true
  end
end
