class SymptomSet < ActiveRecord::Base
  attr_accessible :symptoms_attributes, :symptom_set_id
  belongs_to :user
  has_many :symptoms
  validates :user_id, presence: true
  accepts_nested_attributes_for :symptoms, allow_destroy: true
end
