class Session < ActiveRecord::Base
  attr_accessible :description, :name, :title, :type

  scope :first_come, order(:created_at)
  scope :incomplete, where('completed_at IS NULL')

  def end_time
    started_at + 5.minutes
  end

  def time_remaining(at=Time.zone.now)
    remain = end_time - at
    remain > 0 ? remain : 0
  end

  def started?
    started_at.present?
  end

  def completed?
    completed_at.present?
  end
end
