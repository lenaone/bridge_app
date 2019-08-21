class Event < ApplicationRecord
  belongs_to :campus

  scope :upcoming, -> { where('date > ?', Time.now).order('date desc').limit(5) }
  # have a read on AR Scopes
end