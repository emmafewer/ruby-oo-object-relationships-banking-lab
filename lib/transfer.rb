#require_relative "/lib/bank_account.rb"
class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount

  end  

  def valid?
    
  end
end
