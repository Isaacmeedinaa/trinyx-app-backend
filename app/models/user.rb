class User < ApplicationRecord
    # password security
    has_secure_password

    # db associations
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :deals, through: :likes, dependent: :destroy

    # validations
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
end
