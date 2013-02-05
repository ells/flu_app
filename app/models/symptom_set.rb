class SymptomSet < ActiveRecord::Base
  attr_accessible :symptoms, :symptoms_attributes
  belongs_to :user
  has_many :symptoms, :dependent => :destroy
  accepts_nested_attributes_for :symptoms,  allow_destroy: true
end
