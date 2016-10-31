class AddEmailToNgo < ActiveRecord::Migration[5.0]
  def change
    add_column :ngos, :email, :string
  end
end
