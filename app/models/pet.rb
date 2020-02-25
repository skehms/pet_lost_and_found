class Pet < ApplicationRecord
  SPECIES =  ["dog", "cat", "fish", "snake"]
  validates :name, :address, presence: true
  validates :species, inclusion: {in: SPECIES }

  def found_days_ago
    (Date.today - self.found_on).to_i
  end
end
