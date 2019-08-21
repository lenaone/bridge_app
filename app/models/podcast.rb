class Podcast < ApplicationRecord
  belongs_to :campus

  default_scope { order(date: :desc).limit(5) }
end
