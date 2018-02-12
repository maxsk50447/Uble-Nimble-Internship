class AddUsersColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string, null: false, default: ""
    add_column :users, :lastname, :string, null: false, default: ""
    add_column :users, :citizenid, :string, null: false, default: ""
    add_column :users, :department, :string, default: ""
    add_column :users, :instructorid, :string, default: ""
    add_column :users, :studentid, :string, default: ""
  end
end
