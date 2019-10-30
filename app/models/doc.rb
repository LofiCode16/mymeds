class Doc < ApplicationRecord
  belongs_to :user
  has_one_attached :image, dependent: :destroy
  validates :title, presence: true
  
  
end
