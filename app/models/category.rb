class Category < ApplicationRecord
  has_many :sub_categories, dependent: :destroy

  CATEGORIES = ["Wellbeing", "Co-working"].freeze
end
