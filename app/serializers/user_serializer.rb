class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :accounts
  has_many :piggy_banks
  has_many :transactions
end
