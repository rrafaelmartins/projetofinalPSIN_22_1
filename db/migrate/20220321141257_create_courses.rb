class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :area_knowledge
      t.integer :course_code
      t.string :course_campus

      t.timestamps
    end
  end
end
