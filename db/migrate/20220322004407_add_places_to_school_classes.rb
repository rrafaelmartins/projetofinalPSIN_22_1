class AddPlacesToSchoolClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :school_classes, :places, :integer
  end
end
