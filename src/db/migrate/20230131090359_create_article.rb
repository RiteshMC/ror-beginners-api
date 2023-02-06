class CreateArticle < ActiveRecord::Migration[7.0]
  def change
    create_table :article do |t|
      t.string :title
      t.text :content
      t.integer :order, :default => 0
      t.integer :status
      t.text :memo
      t.timestamps
    end
  end
end
