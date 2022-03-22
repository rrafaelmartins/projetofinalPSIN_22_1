class SchoolClass < ApplicationRecord
    validates :places, presence: true, inclusion: {in: 1..45}
end
