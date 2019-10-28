class AddMedicsToMedictasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :medictasks, :medic, foreign_key: true
  end
end
