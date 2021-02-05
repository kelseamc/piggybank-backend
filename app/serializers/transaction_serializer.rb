class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :user_id, :amount, :category, :created_at
  attribute :account, serializer: AccountSerializer
end
