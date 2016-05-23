class RenameLeagueToCompetitionId < ActiveRecord::Migration
  def change
    rename_column :teams, :league, :competition_id
  end
end
