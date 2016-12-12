class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates_presence_of :user
  validates_presence_of :location
  validates_presence_of :date
  validates_presence_of :sierrabody
  validates_presence_of :sierratitle
  validates_presence_of :kathybody
  validates_presence_of :kathytitle

end
