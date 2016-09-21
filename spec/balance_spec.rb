require 'balance'

describe Balance do
  context '#balance' do
    it 'can show a zero starting bank balance' do
      expect(starting_balance).to eq 0
    end
  end
end
