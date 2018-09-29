class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, :after => :id, null: false
    add_index :users, :username, unique: true
    add_column :users, :role, :integer
  end
end
