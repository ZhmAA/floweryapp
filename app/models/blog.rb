class Blog < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :url, use: [:slugged, :finders]
  validates :url, presence: true, uniqueness: true
  validates :title, presence: true
  validates :meta_title, presence: true, uniqueness: true, :length => { :maximum => 60 }
  validates :meta_description, presence: true, uniqueness: true, :length => { :maximum => 150 }
end
