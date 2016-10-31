class CreateSchoolUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :school_users do |t|
      t.references :school, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
