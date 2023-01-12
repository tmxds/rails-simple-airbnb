class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, numericality: { greater_than_or_equal_to: 1 }
  validates :number_of_guests, numericality: { greater_than_or_equal_to: 1 }

  def guests
    "Accomodates #{number_of_guests} guest#{number_of_guests == 1 ? '' : 's'}"
  end
end
