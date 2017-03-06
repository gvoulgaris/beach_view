class Photo < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :beach

  # Indirect associations

  # Validations

end
