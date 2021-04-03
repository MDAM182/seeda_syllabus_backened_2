class AddCategoryToSyllabus < ActiveRecord::Migration[5.2]
  def change
    add_reference :syllabuses, :category, null: false, foreign_key: true
  end
end
