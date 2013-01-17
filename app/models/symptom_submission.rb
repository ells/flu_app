class SymptomSubmission < ActiveRecord::Base
  attr_accessible :geolocation, :user_id
  has_many :symptoms, :metrics, :metric_values
  belongs_to :user
  
  validates :user_id, presence: true
end
