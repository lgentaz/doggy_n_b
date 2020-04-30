class Outing < ApplicationRecord
    belongs_to :city
    belongs_to :dog
    belongs_to :stroll
end
