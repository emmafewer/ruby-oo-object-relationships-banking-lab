require 'pry'
require_relative "bank_account.rb"

class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount

  end  

  def valid?
    self.sender = BankAccount.new(self)
      if self.sender.valid? == true
        true
      else 
        false
      end

      
 
  end
end
