class Lending < ApplicationRecord
  belongs_to :user
  enum state:{requested: 0,approved: 1,open: 2,closed: 3, rejected: 4, waiting_for_adj_acceptance: 5, readjusment_requested: 6 }
  def self.ransackable_attributes(auth_object = nil)
    ["amount", "interest_rate", "state", "user_id"]
  end
  
  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end
end
