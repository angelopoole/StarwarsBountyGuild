class Contract < ApplicationRecord
    belongs_to :target
    has_many :hunters
end
