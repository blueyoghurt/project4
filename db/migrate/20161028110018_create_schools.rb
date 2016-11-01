class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :website
      t.string :logo
      t.string :email

      t.timestamps
    end
  end
end
