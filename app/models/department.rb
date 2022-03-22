class Department < ApplicationRecord
    belongs_to :user
    has_many :users
    has_many :courses, dependent: :destroy
end
