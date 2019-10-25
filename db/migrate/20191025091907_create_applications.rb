class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :token, :null => false
      t.index :token, unique: true
      t.decimal :chats_count

      t.timestamps
    end
  end
end
