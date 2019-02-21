class Client < ApplicationRecord

 paginates_per 10


def self.search(search)
	if search
		Client.where(run: search).or(Client.where("CONCAT_WS(' ', name, lastname) LIKE ?", "%#{search}%"))
	else
       Client.all
	end
end



has_many :problems

	validates :name, :lastname, :mother_name, presence: true, length: { minimum: 3 }
	validates :run, length: { in: 9..10 },format: { with: /\A[0-9]{7,8}-[0-9]{1,1}+\z/,
    message: "formato no valido" }	
end
