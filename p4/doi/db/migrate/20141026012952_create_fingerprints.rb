class CreateFingerprints < ActiveRecord::Migration
  def change
    create_table :fingerprints do |t|
      t.string :name
      t.string :description
      t.string :doi

      t.timestamps
    end
  end
end
