class User < ApplicationRecord
    has_secure_password
    validates :number, presence: true, length: {minimum: 11, maximum: 11}
end
