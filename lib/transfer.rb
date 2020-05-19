class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(name, receiver, amount) 
    @sender = name 
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end 
 
  def valid? 
    if self == "transfer"
      (self.sender.balance - amount) > 0 && self.sender.status == "open" ? true : false 
    else 
      self.balance > 0 && self.status == "open" ? true : false 
    end 
      
  end 
end
