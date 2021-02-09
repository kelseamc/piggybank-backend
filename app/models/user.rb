class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :accounts
    has_many :transactions
    has_many :piggy_banks
end
