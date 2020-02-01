class User < ApplicationRecord
    has_secure_password
    has_one :profile
    has_many :rsvps
    has_many :events, through: :rsvps

    validates :email, uniqueness: { case_sensitive: false }
end
