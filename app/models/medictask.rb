class Medictask < ApplicationRecord
  belongs_to :user
  belongs_to :medic
  belongs_to :member
end
