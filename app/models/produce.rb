class Produce < ApplicationRecord

  has_many :supplier_produces
  has_many :suppliers, through: :supplier_produces

end
