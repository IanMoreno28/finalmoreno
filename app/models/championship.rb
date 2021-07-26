class Championship < ApplicationRecord
  has_many :pilot_teams
  has_many :races

  def racepoint
    #si en una carrera en la vuelta 35
    if self.race.lap_number == 35 && self.race.position == 1
      puts "*** El ganador de la carrera es: ( #{pilot_team.pilot.full_name}) *** "
    end

    def puntaje (posicion)
      #si en una carrera en la vuelta 35
      if self.race.position == 1
        return = 32
      else self.race.position == 2
          return = 21
        else self.race.position == 3
            return = 16
          else self.race.position == 4
              return = 12
            else self.race.position == 5
                return = 8
              else self.race.position == 6
                  return = 6
                else self.race.position == 7
                    return = 4
                  else self.race.position == 8
                      return = 3
                    else self.race.position == 9
                        return = 2
                      else self.race.position == 10
                          return = 1
      end


  end


end
