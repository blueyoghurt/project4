class CreateNgoUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :ngo_users do |t|
      t.references :ngo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
