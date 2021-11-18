class Post < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_many :post_categories, dependent: :destroy
  has_many :categories, through: :post_categories
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  # user モデルの name を委譲する
  delegate :name, :avater, :id, to: :user, prefix: true
end
