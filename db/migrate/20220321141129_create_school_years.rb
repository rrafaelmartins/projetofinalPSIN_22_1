class CreateSchoolYears < ActiveRecord::Migration[7.0]
  def change
    create_table :school_years do |t|
      t.integer :year
      t.integer :semester
      t.integer :status

      t.timestamps
    end
  end
end
