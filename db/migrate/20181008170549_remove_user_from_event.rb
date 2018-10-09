class RemoveUserFromEvent < ActiveRecord::Migration[5.0]
  def change
  	remove_column :events, :user_id
  end
end
