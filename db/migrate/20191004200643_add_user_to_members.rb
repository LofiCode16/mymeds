class AddUserToMembers < ActiveRecord::Migration[6.0]
  def change
    add_reference :members, :user, foreign_key: true
  end
end
