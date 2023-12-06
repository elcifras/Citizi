class Review < ApplicationRecord
  belongs_to :booking, optional: true
  AUTHORIZED_RATINGS = (1..5)

  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
  validates :comment, presence: true
end
