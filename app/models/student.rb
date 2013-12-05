class Student < ActiveRecord::Base
  attr_accessible :name, :last_name, :house_id

  belongs_to :house

  validates :name, presence: true
  validates :last_name, presence: true, uniqueness: true

end