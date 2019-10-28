# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
applications_list = [
   "1 st" ,
   "2nd apa" ,
   "3rd app" ,
   "4th app" 
]

applications_list.each do |name|
  Application.create( name: name)
end

chats_list = [
  [ "chat-1 on app-1", 1 ],
  [ "chat-2 on app-1", 1 ],
  [ "chat-3 on app-2", 2 ],
  [ "chat-4 on app-3", 3 ]
]
# token is only mandatory for create chat api

chats_list.each do |name, application_id|
  Chat.create( name: name, application_id: application_id)
end

messages_list = [
  [ "message-1 on chat-1", 1 ],
  [ "message-2 on chat-1", 2 ],
  [ "message-3 on chat-2", 3 ],
  [ "message-4 on chat-3", 4 ],
  [ "message-5 on chat-2", 1 ],
  [ "message-6 on chat-3", 1 ],
  [ "message-7 on chat-2", 3 ],
  [ "message-8 on chat-3", 4 ]
]

messages_list.each do |description, chat_id|
  Message.create( description: description, chat_id: chat_id)
end