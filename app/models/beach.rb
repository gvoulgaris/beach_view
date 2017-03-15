class Beach < ApplicationRecord
  # Direct associations

  belongs_to :island

  has_many   :comments,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy
  mount_uploader :image, ImageUploader
  # Indirect associations

  # Validations

end
