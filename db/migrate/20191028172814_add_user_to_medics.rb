class AddUserToMedics < ActiveRecord::Migration[6.0]
  def change
    add_reference :medics, :user, foreign_key: true
  end
end
