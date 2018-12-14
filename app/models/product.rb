class Product < ApplicationRecord
  validates :name,  presence: true , uniqueness: true, length: { in: 5..60 }
end
