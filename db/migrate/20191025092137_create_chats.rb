class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :name
      t.decimal :messages_count

      t.timestamps
    end
  end
end
