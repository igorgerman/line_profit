class Survey < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  has_many   :submissions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
