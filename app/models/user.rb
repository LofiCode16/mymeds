class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :docs, dependent: :destroy     
  has_many :members, dependent: :destroy 
  has_one_attached :image, dependent: :destroy  
  has_many :medictasks, dependent: :destroy
  has_many :medics, through: :medictasks, dependent: :destroy
  validates :name, presence: :true


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.info.name
      user.email = auth.info.email
      user.password = '123456'
    end
  end


end
