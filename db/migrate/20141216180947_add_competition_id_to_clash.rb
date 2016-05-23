class AddCompetitionIdToClash < ActiveRecord::Migration
  def change
    add_column :clashes, :competition_id, :integer
  end
end
