class Symptom < ActiveRecord::Base
  attr_accessible :name, :duration, :symptom_set_id
  belongs_to :symptom_set
end
