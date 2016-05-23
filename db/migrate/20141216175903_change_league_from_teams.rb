class ChangeLeagueFromTeams < ActiveRecord::Migration
  def change
    change_column :teams, :league, :integer
  end
end
