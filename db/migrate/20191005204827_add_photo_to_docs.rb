class AddPhotoToDocs < ActiveRecord::Migration[6.0]
  def change
    add_column :docs, :photo, :string
  end
end
