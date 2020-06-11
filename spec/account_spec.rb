require 'account'

RSpec.describe 'Account' do
  let!(:new_account) { Bank::Account.new }
  let!(:name) {'James Bond'}
  
  it 'an Instance of Bank::Account' do
    expect(new_account).to be_instance_of(Bank::Account)
  end
  context 'Account#open' do 
    it 'Account#open returns Hash' do
      expect(new_account.open(name: name)).to be_kind_of(Hash)
    end
    
    # it 'returns an hash of two' do
    #   expect(new_account.open(name: name)).to have_at_least(2).things
    # end
    
    it 'account number is 10 digits long' do
      expect(Math.log10(new_account.open(name: name)[:account_number]).to_i + 1).to eq(10)
    end
  end
end
