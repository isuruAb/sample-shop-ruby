class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: {unique: true}
      t.text :description, null: false
      t.string :tags, null: false
      t.string :images, null: false
      t.integer :stock, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
