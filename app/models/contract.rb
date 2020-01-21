class Contract < ApplicationRecord
    has_one :HunterContract
    has_many :hunters, through: :HunterContract
end
