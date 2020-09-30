class Professor < ApplicationRecord
    validates :name, presence: true
    validates :level, numericality: {only_integer: true}
    has_many :courses
end
