class Apartment
  attr_accessor :price, :sqft, :num_bathrooms, :num_bedrooms, :array

  def initialize(price = nil, sqft = nil, num_bedrooms = nil, num_bathrooms = nil, array = [])
    @sqft = sqft
    @num_bathrooms = num_bathrooms
    @num_bedrooms = num_bedrooms
    @array = []
  end

  def to_s
    "The apartment is #{ @sqft } square feet and has #{ @array.length } occupants"
  end

  def occupied?
    array.any?
  end
end

