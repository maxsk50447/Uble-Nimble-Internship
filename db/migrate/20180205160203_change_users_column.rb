class ChangeUsersColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :citizenid, :citizen_id
    rename_column :users, :instructorid, :instructor_id
    rename_column :users, :studentid, :student_id
  end
end
