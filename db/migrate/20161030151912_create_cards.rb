class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.boolean :approval
      t.string :picture
      t.text :description
      t.references :student, foreign_key: true
      t.references :task, foreign_key: true
      t.timestamps
    end
  end
end
