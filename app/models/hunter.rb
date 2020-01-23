class Hunter < ApplicationRecord
    has_many :HunterContracts, :dependent => :destroy
    has_many :contracts, through: :HunterContracts
end
