class BankAccount


  # attr_reader(:holder_name, :balance, :type)
  # attr_writer(:holder_name, :balance, :type)
  attr_accessor(:holder_name, :balance, :type)

  def initialize(input_name, input_balance, input_type)
      @holder_name = input_name
      @balance = input_balance
      @type = input_type
  end


  def deposit(amount)
     @balance += amount
  end

  def pay_monthly_fee()
     @balance -= 50 if @type == "business"
     @balance -= 10 if @type == "personal"
  end

end
