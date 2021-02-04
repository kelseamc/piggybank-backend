class PiggyBankSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :goal, :current_balance, :category, :name
end
