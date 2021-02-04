class User < ApplicationRecord
    has_many :accounts
    has_many :transactions
    has_many :piggy_banks
end
