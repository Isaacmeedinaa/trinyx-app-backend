class Business < ApplicationRecord
    # password security
    has_secure_password

    # db associations
    has_many :deals
    has_many :likes, through: :deals

    # validations
end
