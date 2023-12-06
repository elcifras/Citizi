class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user, optional: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
