class Clash < ActiveRecord::Base
  belongs_to :competition
  belongs_to :local_team, class_name: "Team", foreign_key: "local_team_id"
  belongs_to :foreign_team, class_name: "Team", foreign_key: "foreign_team_id"

end
