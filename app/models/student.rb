class Student < ApplicationRecord
    has_many :courses

    def to_s
        "#{self.first_name[0]} #{last_name}"
    end

end
