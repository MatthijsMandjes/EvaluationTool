class Student < ApplicationRecord
  belongs_to :group
  has_many :evaluations, dependent: :destroy

end
