class Business < ApplicationRecord
    # password security
    has_secure_password

    # db associations
    has_many :deals
    has_many :likes, through: :deals

    # validations
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
end
