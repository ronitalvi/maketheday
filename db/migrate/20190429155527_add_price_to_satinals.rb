class AddPriceToSatinals < ActiveRecord::Migration[5.2]
  def change
    add_monetize :satinals, :price, currency: { present: false }
  end
end
