class Metric < ActiveRecord::Base
  attr_accessible :name, :value
  belongs_to :symptom
end
