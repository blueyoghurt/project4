class CreateNgos < ActiveRecord::Migration[5.0]
  def change
    create_table :ngos do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :website
      t.text :description
      t.string :logo
      t.string :email
      t.references :ngo_category, foreign_key: true

      t.timestamps
    end
  end
end
