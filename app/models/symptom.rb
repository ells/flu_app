class Symptom < ActiveRecord::Base
  attr_accessible :name, :duration
  belongs_to :symptom_set
end
