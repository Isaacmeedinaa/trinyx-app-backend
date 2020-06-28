class Business < ApplicationRecord
    # password security
    has_secure_password

    # db associations
    has_many :deals, dependent: :destroy
    has_many :likes, through: :deals, dependent: :destroy

    # validations
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
end
