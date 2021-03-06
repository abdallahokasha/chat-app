class Application < ApplicationRecord
    has_many :chats, dependent: :destroy
    before_create :generate_random_id
    private 
    def generate_random_id
      self.token = SecureRandom.uuid
    end 
end
