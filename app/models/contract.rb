class Contract < ApplicationRecord
    has_one :HunterContract
    has_many :hunters, through: :HunterContract

    def bounty_info
        "#{self.name}. Value: #{self.BountyAmount}"
    end
end
