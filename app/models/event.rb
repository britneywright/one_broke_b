class Event < ActiveRecord::Base
  def self.this_week
    where(:created_at => (Date.today.beginning_of_week)..(Date.today.end_of_week))
  end

  def self.this_week_total
    this_week.inject(0) { |sum, e| sum + e.amount }
  end
end
