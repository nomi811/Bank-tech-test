require 'bank'

starting_balance = Bank::STARTING_BALANCE

describe Bank do

  context '#balance' do
    it 'can show a zero starting bank balance' do
      expect(starting_balance).to eq 0
    end

    it 'can show a bank balance of zero' do
      expect(subject.balance).to eq 0
    end

    it 'contains amount of deposit' do
      expect(subject.deposit(1000)).to eq 1000
    end

    it 'contains amount of withdrawal' do
      expect(subject.withdrawal(500)).to eq (-500)
    end

    it 'can show correct balance after a transaction' do
      subject.deposit(1000)
      subject.deposit(2000)
      subject.withdrawal(500)

      expect(subject.balance).to eq 2500
    end
  end
end
