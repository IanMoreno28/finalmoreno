class Race < ApplicationRecord
  belongs_to :circuit
  belongs_to :championship
  has_many :laps
end
