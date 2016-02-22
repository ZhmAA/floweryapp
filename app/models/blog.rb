class Blog < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :meta_title, presence: true, uniqueness: true, :length => { :maximum => 60 }
  validates :meta_description, presence: true, uniqueness: true, :length => { :maximum => 150 }
end
