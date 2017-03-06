class Beach < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
