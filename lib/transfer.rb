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
    
  end 
end
