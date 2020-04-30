class Stroll < ApplicationRecord
    belongs_to :city
    belongs_to :dogsitter
    has_many :outings, dependent: :destroy
    has_many :dogs, through: :outings
end
