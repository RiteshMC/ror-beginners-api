class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :post do |t|
      t.references :author, foreign_key: { to_table: :user }, null: false
      t.string :title
      t.string :meta_title
      t.text :slug
      t.string :summary
      t.text :content
      t.integer :published
      t.datetime :published_date

      t.timestamps
    end
  end
end
