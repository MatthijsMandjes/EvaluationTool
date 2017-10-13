class Group < ApplicationRecord
  has_many :students
  validates :batch, :start_date, :end_date, presence: true

end
