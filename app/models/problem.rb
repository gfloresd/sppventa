class Problem < ApplicationRecord

 	paginates_per 10


def self.search(search)
	if search
		if	Problem.where(id: search).present?
			Problem.where(id: search)
			#.or(Problem.joins(:client).where("client.run = ?","%#{search}%"))
		elsif Client.where(run: search).present?
			c = Client.where(run: search).pluck(:id)
			Problem.where(client_id: c)
		else
		     Problem.all	
		end		
	else	 
		Problem.all
	end
end



	belongs_to :client
	belongs_to :employee
	has_many :deeds, index_errors: true, dependent: :destroy

	accepts_nested_attributes_for :deeds

	validates :document_type, :product_code, presence: true, length: { minimum: 3 }
	validates :buy_at, :document_number, presence:true
	validates_associated :deeds


end
