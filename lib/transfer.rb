class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(name, receiver, amount) 
    @sender = name 
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end 
 
  def valid? 
    if (self.sender.balance - amount) > 0 && self.sender.status == "open" 
      if self.receiver.balance > 0 && self.receiver.status == "open"
        true 
      else 
        false 
      end 
    else 
      false 
    end 
  end 
end
