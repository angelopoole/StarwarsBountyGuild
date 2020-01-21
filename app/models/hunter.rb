class Hunter < ApplicationRecord
    has_many :contracts
    has_many :targets, through: :contracts
end
