class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :vacancy
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
