require 'elasticsearch/model'

class Message < ApplicationRecord
    belongs_to :chat
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
end
# Message.import
Message.import(force: true)

