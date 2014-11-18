class CreateImageObjects < ActiveRecord::Migration
  def change
    create_table :image_objects do |t|
      t.string :filename
      t.boolean :private

      t.timestamps
    end
  end
end
