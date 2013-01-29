class Symptom < ActiveRecord::Base
  attr_accessible :name,:presence, :duration, :intensity, :symptom_set_id
  belongs_to :symptom_set
  validates :name, presence: true
  validates :symptom_set_id, presence: true
end
