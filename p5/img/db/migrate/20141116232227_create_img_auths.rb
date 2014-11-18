class CreateImgAuths < ActiveRecord::Migration
  def change
    create_table :img_auths do |t|
      t.references :usr, index: true
      t.references :imgob, index: true

      t.timestamps
    end
  end
end
