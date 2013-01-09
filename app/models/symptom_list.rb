class SymptomList < ActiveRecord::Base
  attr_accessible :symptom_id, :symptom_metric, :geolocation
  belongs_to :user
  

  validates :symptom_id, presence: true
  validates :symptom_metric, presence: true
  validates :geolocation, presence: true
  validates :user_id, presence: true

  default_scope order: 'symptom_lists.created_at DESC'
end
