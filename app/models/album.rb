class Album < ActiveRecord::Base
  has_many :images
  #validates :meta_title, presence: true, uniqueness: true, :length => { :maximum => 60 }
  #validates :meta_description, presence: true, uniqueness: true, :length => { :maximum => 150 }
end
