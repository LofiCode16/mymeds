class RemoveMedicFromMedictasks < ActiveRecord::Migration[6.0]
  def change

    remove_column :medictasks, :medic, :string

    remove_column :medictasks, :speciality, :string
  end
end
