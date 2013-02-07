class SymptomSet < ActiveRecord::Base
  attr_accessible :symptoms, :symptoms_attributes
  belongs_to :user
  has_many :symptoms, :dependent => :destroy
<<<<<<< HEAD
  accepts_nested_attributes_for :symptoms,  allow_destroy: true
  
  validates :user_id, presence: true
  default_scope order: 'symptom_sets.created_at DESC'

=======
  accepts_nested_attributes_for :symptoms, :reject_if => lambda { |a| a[:name].blank?}, :allow_destroy => true
>>>>>>> parent of ef335bf... symptom_set controller ( build -> new )
end
