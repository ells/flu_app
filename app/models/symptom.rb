class Symptom < ActiveRecord::Base
  attr_accessible :duration, :name, :presence
  belongs_to :symptom_set
end
