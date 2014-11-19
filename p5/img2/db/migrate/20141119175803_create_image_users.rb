class CreateImageUsers < ActiveRecord::Migration
  def change
    create_table :image_users do |t|
      t.references :image_object, index: true

      t.timestamps
    end
  end
end
