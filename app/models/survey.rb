class Survey < ApplicationRecord
  # Direct associations

  has_many   :submissions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
