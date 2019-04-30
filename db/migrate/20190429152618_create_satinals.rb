class CreateSatinals < ActiveRecord::Migration[5.2]
  def change
    create_table :satinals do |t|
      t.string :title
      t.string :sku
      t.string :photo_url
      t.string :location

      t.timestamps
    end
  end
end
