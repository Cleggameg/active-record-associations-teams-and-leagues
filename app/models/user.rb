class User < ActiveRecord::Base
  has_many :memberships
  has_many :joined_teams, through: :memberships, source: :team
  has_many :leagues
  has_one :captain_position, class_name: "Team"
  has_one :created_league, class_name: "League"
end
