class Professor < ApplicationRecord
    validates :name, presence: true
    validates :level, numericality: {only_integer: true}
end
