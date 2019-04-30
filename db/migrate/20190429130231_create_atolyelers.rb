class CreateAtolyeler < ActiveRecord::Migration[5.2]
  def change
    create_table :atolyeler do |t|
      t.string :picture_url

      t.timestamps
    end
  end
end
