class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :meta_title
      t.string :meta_description
      t.string :keywords
    end
  end
end
