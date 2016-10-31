class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.references :user, foreign_key: true
      t.references :level, foreign_key: true
      t.references :school, foreign_key: true
      t.timestamps
    end
  end
end
