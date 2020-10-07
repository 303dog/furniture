class User < ApplicationRecord
        has_secure_password
        validates :username, uniqueness: true
        validates :name, presence: true
        validates :address, presence: true
        validates :email, presence: true
        


end
