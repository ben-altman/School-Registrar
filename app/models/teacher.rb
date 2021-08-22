class Teacher < ApplicationRecord
    has_secure_password

    validates :name, :email, presence: true
    validates :name, :email, uniqueness: true

    def self.from_omniauth(response)
        Teacher.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.name = response[:info][:name]
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end
end
