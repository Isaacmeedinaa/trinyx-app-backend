class User < ApplicationRecord
    # password security
    has_secure_password

    # db associations
    has_many :comments
    has_many :likes
    has_many :deals, through: :likes

    # validations
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
end
