class Account < ActiveRecord::Base
	belongs_to :user
	def self.dashboard(current_user)
	    data = Account.select("種類, sum(費用) as total").where({ user: current_user }).group("種類")
	    data.map{|d|[ d.種類, d.total ]}
 	end
end
