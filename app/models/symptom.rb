class Symptom < ActiveRecord::Base
  attr_accessible :name
  has_many :metrics
end
