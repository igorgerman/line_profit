class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :surveys,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
