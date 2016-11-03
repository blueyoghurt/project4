class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.references :event, foreign_key: true
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
