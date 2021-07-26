class Pilot < ApplicationRecord
  has_many :pilot_teams
  has_many :laps

  def full_name
      first_name + " " + last_name
    end

end
