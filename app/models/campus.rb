class Campus < ApplicationRecord
  self.table_name = :campuses
  has_many :events
  has_many :podcasts
  has_many :services

  def service_days
    services.collect(&:date)
  end

  def service_times
    services.collect(&:date).reject(&:blank?)
  end
end
