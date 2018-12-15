class Supplier < ApplicationRecord

  has_many :supplier_produces
  has_many :producers, through: :supplier_produces
  
end
