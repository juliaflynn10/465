class CreateImageObjects < ActiveRecord::Migration
  def change
    create_table :image_objects do |t|
      t.string :filename
      t.boolean :public
      t.references :user, index: true

      t.timestamps
    end
  end
end
