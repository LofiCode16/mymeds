class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :docs, dependent: :destroy     
  has_many :members, dependent: :destroy 
  has_one_attached :image, dependent: :destroy  
  has_many :medictasks, dependent: :destroy
  has_many :medics, through: :medictasks  

end
