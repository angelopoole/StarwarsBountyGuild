class Hunter < ApplicationRecord
    has_many :HunterContracts
    has_many :contracts, through: :HunterContracts
end
