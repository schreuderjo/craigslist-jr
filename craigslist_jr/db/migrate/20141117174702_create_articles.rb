class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :category
      t.string :title
      t.text :description
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
