class CreateTagObjects < ActiveRecord::Migration
  def change
    create_table :tag_objects do |t|
      t.string :tag_string
      t.references :image_object, index: true

      t.timestamps
    end
  end
end
