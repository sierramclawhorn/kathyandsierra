class Post < ApplicationRecord
  # has_attached_file :photo
  belongs_to :location

  validates_presence_of :location
  validates_presence_of :date
  validates_presence_of :title
  validates_presence_of :sierraBody
  validates_presence_of :kathyBody

end
