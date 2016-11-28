class User < ApplicationRecord
  # Direct associations

  has_many   :submissions,
             :dependent => :destroy

  has_many   :restaurants,
             :dependent => :destroy

  # Indirect associations

  has_many   :completed_surveys,
             :through => :submissions,
             :source => :survey

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
