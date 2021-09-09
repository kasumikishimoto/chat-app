class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image #messagesテーブルにカラムの記述は不要

  validates :content, presence: true
end