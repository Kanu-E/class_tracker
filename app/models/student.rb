class Student < ApplicationRecord

    def to_s
        "#{self.first_name[0]} #{last_name}"
    end

end
