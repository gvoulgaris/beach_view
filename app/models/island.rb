class Island < ApplicationRecord
  # Direct associations

  has_many   :beaches,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
