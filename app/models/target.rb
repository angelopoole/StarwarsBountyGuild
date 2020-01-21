class Target < ApplicationRecord
    has_one :contract
    has_many :hunters, through: :contracts
end
