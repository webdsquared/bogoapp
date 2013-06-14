class Transaction < ActiveRecord::Base
  attr_accessible :date, :saved, :spent

  belongs_to :user

  def average_savings_per_transaction
  	total = self.spent + self.saved
  	average = self.saved / total * 100
  end

  
end
