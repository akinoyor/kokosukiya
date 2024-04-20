class Movie < ApplicationRecord
  has_one_attached :movie_image
  enum publish_status: { off: 0, on: 1}
end
