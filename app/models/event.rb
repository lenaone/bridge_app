class Event < ApplicationRecord
  belongs_to :campus

  scope :upcoming, -> { where('date > ?', Time.now).order('date desc') }
  # have a read on AR Scopes
end