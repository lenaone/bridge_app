class Campus < ApplicationRecord
  self.table_name = :campuses
  has_many :events
  has_many :podcasts
  has_many :service
end
