class CreateMedics < ActiveRecord::Migration[6.0]
  def change
    create_table :medics do |t|
      t.string :rut
      t.string :name
      t.string :speciality

      t.timestamps
    end
  end
end
