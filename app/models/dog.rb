class Dog < ApplicationRecord
    belongs_to :city
    has_many :outings, dependent: :destroy
    has_many :strolls, through: :outings
    has_many :dogsitters, through: :strolls
end
