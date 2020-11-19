require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount

  end  

  def valid?
    # (self.sender.valid?)? true : false 
    # (self.receiver.valid?)? true : false
    self.sender.valid? && self.receiver.valid? 
  end

  def execute_transaction

    if self.sender.balance >= @amount && self.valid? && @status == "pending"
      self.sender.balance-=self.amount
      self.receiver.balance+=self.amount
      @status = "complete" 

    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end

  end

  def reverse_transfer
    if @status == "complete"
      self.sender.balance+=self.amount
      self.receiver.balance-=self.amount
      @status = "reversed"
    end
  end
end