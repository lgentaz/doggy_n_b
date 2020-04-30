class City < ApplicationRecord
    has_many :dogs
    has_many :dogsitters
    has_many :strolls
    has_many :outings
end
