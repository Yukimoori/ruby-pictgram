class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  has_many :comments
  has_many :favorites,dependent: :destroy
  has_many :favorite_users, through: :favorites, source: 'user'
  belongs_to :user

  def favorite_user(user_id)
  favorites.find_by(user_id: user_id)
  end
end
