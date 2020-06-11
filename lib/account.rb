module Bank 
  class Account
    
    attr_reader :name
    
    def initialize()
    end

    def open(name:)
      { name: name, account_number: generate_account_number } 
    end


    private
   
    def generate_account_number
      new_account = Random.new
      new_account.rand(10 ** 10)
    end
  
  end
end
