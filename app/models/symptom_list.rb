class SymptomList < ActiveRecord::Base
  attr_accessible :symptom_id, :symptom_metric, :geolocation
  belongs_to :user
  validates :user_id, presence: true

  default_scope order: 'symptom_lists.created_at DESC'
end
