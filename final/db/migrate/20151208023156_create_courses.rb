class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :size
      t.integer :user_id
      t.references :user, index:true, foreign_key: true
      t.references :seating_chart, index:true, foreign_key: true


      t.timestamps null: false
    end
  end
end
