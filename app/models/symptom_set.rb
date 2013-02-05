class SymptomSet < ActiveRecord::Base
  attr_accessible :symptoms, :symptoms_attributes
  belongs_to :user
  has_many :symptoms, :dependent => :destroy
  accepts_nested_attributes_for :symptoms,  allow_destroy: true
  
  validates :user_id, presence: true
  default_scope order: 'symptom_sets.created_at DESC'

end
