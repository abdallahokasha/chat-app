class Application < ApplicationRecord
    before_create :generate_random_id

    private 
    def generate_random_id
      self.token = SecureRandom.uuid
    end 
end
