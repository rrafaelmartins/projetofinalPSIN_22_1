class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :area_knowledge, :department_code, :department_campus

  has_many :courses, dependant: :destroy
  has_many :users
end
