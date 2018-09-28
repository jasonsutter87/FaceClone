class Post < ApplicationRecord
  has_many :images, :as => :imageable
end
