class CreateImgObs < ActiveRecord::Migration
  def change
    create_table :img_obs do |t|
      t.string :filename
      t.boolean :private
      t.references :usr, index: true

      t.timestamps
    end
  end
end
