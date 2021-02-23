class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    validates :name, :username, :password, presence: true
    has_many :accounts
    has_many :transactions
    has_many :piggy_banks
end
