class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :account_number, :total, :user_id
  
 
end
