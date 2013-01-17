class MetricValue < ActiveRecord::Base
  attr_accessible :value
  validates :value, presence: true, length: { maximum: 3 }
  belongs_to :symptom_submission
end
