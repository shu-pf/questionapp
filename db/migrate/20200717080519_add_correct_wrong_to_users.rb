class AddCorrectWrongToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :correct, :string
    add_column :users, :wrong, :string
  end
end
