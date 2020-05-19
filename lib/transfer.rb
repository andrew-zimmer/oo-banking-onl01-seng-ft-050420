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
    if self.valid? && (sender.balance - amount) > 0 
      sender.balance -= amount 
      receiver.balance += amount 
      self.status = "complete"
    end 
  end 
end
