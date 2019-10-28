class Medic < ApplicationRecord
  has_many :medictasks
  has_many :users, through: :medictasks
  belongs_to :user
end
