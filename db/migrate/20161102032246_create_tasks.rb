class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.references :template, foreign_key: true

      t.timestamps
    end
  end
end
