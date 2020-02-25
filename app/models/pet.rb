class Pet < ApplicationRecord
  validates :name, :address, presence: true
  validates :species, inclusion: {in: ["dog", "cat", "fish"]}
end
