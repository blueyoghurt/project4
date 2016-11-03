class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :completion
      t.references :student, foreign_key: true
      t.references :template, foreign_key: true
      t.timestamps
    end
  end
end
