class User < ApplicationRecord
    
    has_secure_password

    validates :name, :nationality, :state, :rg, :cpf, :birth_data, :email, :password, :kind, presence: true
    validates :email, uniqueness: true

    enum kind:{
        'director': 0,
        'department_coordinator': 1,
        'course_coordinator': 2,
        'teacher': 3,
        'student': 4
    }

end
