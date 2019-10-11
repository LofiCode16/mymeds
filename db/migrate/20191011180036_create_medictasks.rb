class CreateMedictasks < ActiveRecord::Migration[6.0]
  def change
    create_table :medictasks do |t|
      t.string :title
      t.string :content
      t.datetime :date
      t.string :medic
      t.string :speciality
      t.boolean :done, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
