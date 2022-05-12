class Dog < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :busca,
    against: [ :description, :temper ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
