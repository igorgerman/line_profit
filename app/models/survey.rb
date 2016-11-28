class Survey < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  has_many   :submissions,
             :dependent => :destroy

  # Indirect associations

  has_many   :completed_submissions,
             :through => :submissions,
             :source => :user

  # Validations

end
