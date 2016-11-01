class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.float :duration
      t.text :description
      t.integer :vacancy
      t.string :image
      t.references :school, foreign_key: true
      t.references :education_level, foreign_key: true

      t.timestamps
    end
  end
end
