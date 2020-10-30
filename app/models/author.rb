class Author < ActiveRecord::Base
    validates  :name, presence: true, uniqueness: true
    validate :phone_number_too_short

    def phone_number_too_short
        if phone_number.length < 10
            errors.add(:phone_number, "Phone Number too short")
        end
    end

end
