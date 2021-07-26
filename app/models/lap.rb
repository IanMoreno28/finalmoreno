class Lap < ApplicationRecord
  belongs_to :race
  belongs_to :pilot
end
