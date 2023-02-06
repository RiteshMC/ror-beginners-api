class AddTokenToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :token, :string, after: :password
  end
end
