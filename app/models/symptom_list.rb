class SymptomList < ActiveRecord::Base
  attr_accessible :geolocation, :symptom_id, :symptom_metric
  validates :user_id, presence: true
end
