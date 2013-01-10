class Metric < ActiveRecord::Base
  attr_accessible :name
  belongs_to :metricizable, polymorphic: true
end
