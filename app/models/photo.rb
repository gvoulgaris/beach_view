class Photo < ApplicationRecord
  # Direct associations
  mount_uploader :image, ImageUploader
  belongs_to :user

  belongs_to :beach

  # Indirect associations

  # Validations

end
