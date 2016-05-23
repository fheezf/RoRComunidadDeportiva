class RenameLocalAndForeignTeamToClash < ActiveRecord::Migration
  def change
    rename_column :clashes, :local_team, :local_team_id
    rename_column :clashes, :foreign_team, :foreign_team_id
  end
end
