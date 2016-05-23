class Competition < ActiveRecord::Base
has_many :teams
has_many :clashes
end
