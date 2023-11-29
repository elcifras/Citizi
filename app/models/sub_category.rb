class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :services
end
