class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :state, :rg, :cpf, :birth_data, :email, :kind


end
