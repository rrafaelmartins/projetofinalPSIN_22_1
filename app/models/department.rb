class Department < ApplicationRecord
    has_many :courses, dependent: :destroy
    has_many :users
    has_many :subjects
    #has_one :department_coordinator, class_name: "User"     #PODERIA FAZER UMA CLASSE SEPARADA PARA CADA TIPO DE USUÁRIO
end
