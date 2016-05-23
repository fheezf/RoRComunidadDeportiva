class AddLocalAndForeignScoreToClashes < ActiveRecord::Migration
  def change
    add_column :clashes, :local_score, :integer
    add_column :clashes, :foreign_score, :integer
  end
end
