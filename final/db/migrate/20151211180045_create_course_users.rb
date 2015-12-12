class CreateCourseUsers < ActiveRecord::Migration
  def change
    create_table :course_users do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :row
      t.integer :column
      t.references :course, index: true, foreign_key: true
      t.references :seating_chart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
