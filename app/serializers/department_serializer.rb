class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :area_knowledge, :department_code, :department_campus
  has_many :users
  has_many :courses
end
