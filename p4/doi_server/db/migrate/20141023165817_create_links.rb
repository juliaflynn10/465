class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :address
      t.references :fingerprint, index: true

      t.timestamps
    end
  end
end
