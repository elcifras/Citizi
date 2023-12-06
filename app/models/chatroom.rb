class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :service, uniqueness: { scope: :user }
  has_many :messages, dependent: :destroy
end
