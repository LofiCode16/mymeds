class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.datetime :birth_date
      t.string :genre

      t.timestamps
    end
  end
end
