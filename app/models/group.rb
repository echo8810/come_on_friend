class Group < ApplicationRecord

  validates :group_name ,presence: true

  belongs_to :user
  has_many :events
  mount_uploader :image, ImageUploader

end
