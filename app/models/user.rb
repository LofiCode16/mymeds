class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :docs, dependent: :destroy     
  has_many :members, dependent: :destroy 
  has_one_attached :image, dependent: :destroy    

end
