class AddApplicationIdToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :application_id, :integer
    add_index  :chats, :application_id
  end
end
