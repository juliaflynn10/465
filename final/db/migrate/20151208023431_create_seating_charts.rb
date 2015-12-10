class CreateSeatingCharts < ActiveRecord::Migration
  def change
    create_table :seating_charts do |t|
      t.integer :course_id
      t.integer :user_id
      t.integer :seat_count
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
