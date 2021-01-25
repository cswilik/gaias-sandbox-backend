class User < ApplicationRecord
    has_many :weathers, dependent: :destroy
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
