class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_id
      t.references :instructor, index: true

      t.timestamps
    end
  end
end
