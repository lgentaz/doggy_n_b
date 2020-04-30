class City < ApplicationRecord
    has_many :dogs, dependent: :destroy
    has_many :dogsitters, dependent: :destroy
    has_many :strolls, dependent: :destroy
    has_many :outings, dependent: :destroy
end
