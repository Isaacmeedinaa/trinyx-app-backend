class User < ApplicationRecord
    # password security
    has_secure_password

    # db associations
    has_many :comments
    has_many :likes
    has_many :deals, through: :likes

    # validations
end
