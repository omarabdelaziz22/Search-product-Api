class Product < ApplicationRecord
  validates :name,  presence: true , length: { in: 5..60 }
end
