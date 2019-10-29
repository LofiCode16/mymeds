class AddMembersToMedictasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :medictasks, :member, foreign_key: true
  end
end
