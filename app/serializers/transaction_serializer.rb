class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :user_id, :amount, :type
end
