class AddUserReferencesToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_reference :chatrooms, :user, null: false, foreign_key: true
    add_reference :chatrooms, :service, null: false, foreign_key: true
  end
end
