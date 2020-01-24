class Hunter < ApplicationRecord
    has_many :HunterContracts, :dependent => :destroy
    has_many :contracts, through: :HunterContracts

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true

    has_secure_password


end
