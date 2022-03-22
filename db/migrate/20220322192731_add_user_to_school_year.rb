class AddUserToSchoolYear < ActiveRecord::Migration[7.0]
  def change
    add_reference :school_years, :user, null: false, foreign_key: true
  end
end
