class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(name, receiver, amount) 
    @sender = name 
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end 
 
  def valid? 
    sender.valid? && receiver.valid? ? true : false
  end 
  
  def execute_transaction 
    if self.status == "complete"
      "Your transaction is already complete."
    elsif self.valid? && sender.balance > self.amount 
      sender.balance -= amount 
      receiver.balance += amount 
      self.status = "complete"
    elsif sender.balance < self.amount
      "Transaction rejected. Please check your account balance."
    end 
  end 
end
