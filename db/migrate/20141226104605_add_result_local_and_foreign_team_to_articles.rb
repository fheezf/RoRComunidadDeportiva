class AddResultLocalAndForeignTeamToArticles < ActiveRecord::Migration
  def change
      add_column :articles, :local_team_id, :integer
      add_column :articles, :foreign_team_id, :integer
      add_column :articles, :result, :string
  end
end
