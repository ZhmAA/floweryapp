class Image < ActiveRecord::Base
  belongs_to :album
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :description, presence: true
end
