class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :area_knowledge, :course_code, :course_campus

  has_many :users
end
