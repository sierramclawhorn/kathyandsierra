class User < ApplicationRecord
    has_many :posts

    validates_uniqueness_of :username
end
