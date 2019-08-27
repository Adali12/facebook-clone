class Clone < ApplicationRecord
    validates :First_name, presence: true
    validates :Last_name, presence: true
    before_validation { email.downcase! }
    validates :email, presence: true, uniqueness: true
    has_secure_password
    validates :password, :password_confirmation, presence: true, length: { minimum: 6 }    
    has_many :posts
end
