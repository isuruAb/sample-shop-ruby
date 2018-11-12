class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
