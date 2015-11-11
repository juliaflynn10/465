class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_string
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
