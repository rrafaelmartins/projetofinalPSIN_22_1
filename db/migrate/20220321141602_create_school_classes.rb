class CreateSchoolClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :school_classes do |t|
      t.string :name
      t.integer :class_code
      t.string :calendar
      t.string :class_room

      t.timestamps
    end
  end
end
