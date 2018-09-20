class AddUserToMessage < ActiveRecord::Migration[5.2]
  def change
 	add_column :messages, :to_user, :integer
    add_column :messages, :from_user, :integer
  end
end
