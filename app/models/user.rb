class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name,presence: true 
  #nameカラムは、空の時DBにデータを保存しないバリデーション！
  has_many :room_users
  has_many : rooms, though: :room_users
end
