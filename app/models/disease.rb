class Disease < ActiveRecord::Base
  attr_accessible :name, :symptoms, :symptoms_attributes
  has_many :symptoms, as: :symptomable
  accepts_nested_attributes_for :symptoms
end
