class Service < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  has_one :category, through: :sub_category
  has_many :timeslots, dependent: :destroy
  has_many :bookings, through: :timeslots
  has_many_attached :photos
  has_many :reviews, through: :bookings

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :description],
  associated_against: {
    sub_category: [:name],
    category: [:name]
  }

  def related_services
    user.services.where.not(id: self.id)
  end

end
