class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  has_many :countries, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_countries, through: :likes, source: :country
  def already_liked?(couintries)
    self.likes.exists?(country_id: country.id)
  end
end
