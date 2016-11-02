class CreateTasktrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :tasktrackers do |t|
      t.string :picture
      t.text :description
      t.references :card, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
