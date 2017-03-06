class Beach < ApplicationRecord
  # Direct associations

  belongs_to :island

  has_many   :comments,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
