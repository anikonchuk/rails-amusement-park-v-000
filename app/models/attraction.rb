class Attraction < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides

  def user_count
    self.users.count
  end
end
