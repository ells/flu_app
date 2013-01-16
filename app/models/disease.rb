class Disease < ActiveRecord::Base
  attr_accessible :name, :symptoms, :symptoms_attributes
  has_many :symptoms, as: :symptomable, :dependent => :destroy
  accepts_nested_attributes_for :symptoms, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy=>true
end
