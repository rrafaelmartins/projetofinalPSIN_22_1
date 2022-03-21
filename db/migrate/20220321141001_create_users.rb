class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nationality
      t.string :state
      t.string :rg
      t.string :cpf
      t.string :birth_data
      t.string :email
      t.string :password
      t.integer :kind

      t.timestamps
    end
  end
end
