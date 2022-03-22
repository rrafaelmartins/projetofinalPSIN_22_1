class Department < ApplicationRecord
    has_many :users
    has_many :courses, dependent: :destroy
end
