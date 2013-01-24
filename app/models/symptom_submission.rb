class SymptomSubmission < ActiveRecord::Base
  attr_accessible :geolocation
  has_many :symptoms
  has_many :metric_values
  belongs_to :user
  
  validates :user_id, presence: true
end
