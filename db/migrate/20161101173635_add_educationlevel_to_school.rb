class AddEducationlevelToSchool < ActiveRecord::Migration[5.0]
  def change
    add_reference :schools, :education_level, foreign_key: true
  end
end
