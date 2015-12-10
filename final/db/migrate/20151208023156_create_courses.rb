class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :size
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
