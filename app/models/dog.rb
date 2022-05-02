class Dog < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_dogs,
    against: [ :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
