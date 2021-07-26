class Team < ApplicationRecord
  belongs_to :brand
    has_many :pilot_teams
end
