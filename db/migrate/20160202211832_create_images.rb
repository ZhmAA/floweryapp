class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :description
      t.string :image
      t.references :album
      t.timestamps null: false
    end
  end
end
