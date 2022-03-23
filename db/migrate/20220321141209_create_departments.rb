class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :area_knowledge
      t.integer :department_code
      t.string :department_campus

      t.timestamps
    end
  end
end
