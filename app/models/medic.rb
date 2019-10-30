class Medic < ApplicationRecord
  has_many :medictasks, dependent: :destroy
  has_many :users, through: :medictasks
  belongs_to :user
end
