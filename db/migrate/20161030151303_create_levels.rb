class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :description
      t.references :education_level, foreign_key: true

      t.timestamps
    end
  end
end
