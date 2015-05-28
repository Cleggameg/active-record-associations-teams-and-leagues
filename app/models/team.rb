class Team < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships, source: :user
  belongs_to :league
  belongs_to :captain, class_name: "User", foreign_key: :user_id
end
