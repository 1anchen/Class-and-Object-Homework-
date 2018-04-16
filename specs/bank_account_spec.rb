require("minitest/autorun")
require("minitest/rg")
require_relative("../bank_account")

class TestBankAccount < MiniTest::Test

  def test_account_name
    bank_account = BankAccount.new("John", 2, "business")
      assert_equal("John", bank_account.holder_name())
  end

  def test_account_balance
    bank_account = BankAccount.new("John", 2, "business")
      assert_equal(2, bank_account.balance())
  end

  def test_account_type
    bank_account = BankAccount.new("John", 2, "business")
      assert_equal("business", bank_account.type())
  end

  def test_set_account_name
    bank_account = BankAccount.new("John", 2, "business")
    bank_account.holder_name = "Sandy"
    assert_equal("Sandy", bank_account.holder_name())
  end

  def test_set_account_balance
    bank_account = BankAccount.new("John", 2, "business")
    bank_account.balance = 10
    assert_equal(10, bank_account.balance())
  end

  def test_set_account_type
    bank_account = BankAccount.new( 0,0,0 )
    bank_account.type = "personal"
    assert_equal("personal", bank_account.type())
  end

  def test_deposit_into_account
    bank_account = BankAccount.new( 0,2,0 )
    bank_account.deposit(100)
    assert_equal(102,bank_account.balance())
  end

  def test_pay_monthly_fee__business
    bank_account = BankAccount.new( "Yang",2,"business" )
    bank_account.pay_monthly_fee()
    assert_equal(-48,bank_account.balance())
  end

  def test_pay_monthly_fee__personal
    bank_account = BankAccount.new( "Tang",2,"personal" )
    bank_account.pay_monthly_fee()
    assert_equal(-8,bank_account.balance())
  end

end
