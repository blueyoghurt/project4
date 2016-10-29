class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.boolean :school
      t.boolean :student
      t.boolean :ngo
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
