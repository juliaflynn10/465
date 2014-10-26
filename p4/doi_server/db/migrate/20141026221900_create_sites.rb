class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :url
      t.references :fingerprint, index: true

      t.timestamps
    end
  end
end
