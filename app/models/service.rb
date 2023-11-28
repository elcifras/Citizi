class Service < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  has_one :category, through: :sub_category
end
