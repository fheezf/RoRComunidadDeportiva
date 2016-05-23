class Team < ActiveRecord::Base
  belongs_to :competition
  has_many :clashes
  has_many :articles
end
