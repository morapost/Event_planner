class AddColumnToUserEvent < ActiveRecord::Migration[5.0]
  def change
  	add_column :user_events, :confirmation_token, :string
  	add_column :user_events, :status, :string, default: "pending"
  end
end
