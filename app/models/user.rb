class User < ApplicationRecord

	def self.import(file)
	  CSV.foreach(file.path, headers: true) do |row|
	    begin
	    	User.create! row.to_hash	
	    rescue Exception => e
	    end
	  end
	end
end
