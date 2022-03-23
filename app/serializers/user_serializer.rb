class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :state, :rg, :cpf, :birth_data, :email, :kind

  has_many :school_classes
  has_many :subjects
end
