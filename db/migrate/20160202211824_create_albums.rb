class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :meta_title
      t.string :meta_description
      t.string :keywords
      t.timestamps null: false
    end
  end
end
